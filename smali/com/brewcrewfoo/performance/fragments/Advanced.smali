.class public Lcom/brewcrewfoo/performance/fragments/Advanced;
.super Landroid/preference/PreferenceFragment;
.source "Advanced.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDirtyBackground:Landroid/preference/Preference;

.field private mDirtyExpireCentisecs:Landroid/preference/Preference;

.field private mDirtyRatio:Landroid/preference/Preference;

.field private mDirtyWriteback:Landroid/preference/Preference;

.field private mFastCharge:Landroid/preference/CheckBoxPreference;

.field private mFreeMem:Landroid/preference/ListPreference;

.field private mMinFreeK:Landroid/preference/Preference;

.field private mOvercommit:Landroid/preference/Preference;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mReadAhead:Landroid/preference/ListPreference;

.field private mSeekbarProgress:I

.field private mSwappiness:Landroid/preference/Preference;

.field private mVfs:Landroid/preference/Preference;

.field private settingText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brewcrewfoo/performance/fragments/Advanced;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/brewcrewfoo/performance/fragments/Advanced;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mFastCharge:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/brewcrewfoo/performance/fragments/Advanced;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->settingText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/brewcrewfoo/performance/fragments/Advanced;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mSeekbarProgress:I

    return v0
.end method

.method static synthetic access$302(Lcom/brewcrewfoo/performance/fragments/Advanced;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mSeekbarProgress:I

    return p1
.end method

.method private getMinFreeValue()I
    .locals 8

    .prologue
    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, emptyApp:I
    const-string v5, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-static {v5}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, MINFREE_LINE:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, EMPTY_APP:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 286
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    div-int/lit16 v3, v5, 0x400

    .line 287
    .local v3, mb:I
    int-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    double-to-int v2, v5

    .line 292
    .end local v3           #mb:I
    :cond_1
    :goto_0
    return v2

    .line 288
    :catch_0
    move-exception v4

    .line 289
    .local v4, nfe:Ljava/lang/NumberFormatException;
    const-string v5, "PerformanceControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error processing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mPreferences:Landroid/content/SharedPreferences;

    .line 74
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 75
    const v5, 0x7f030001

    invoke-virtual {p0, v5}, Lcom/brewcrewfoo/performance/fragments/Advanced;->addPreferencesFromResource(I)V

    .line 77
    invoke-direct {p0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getMinFreeValue()I

    move-result v3

    .line 78
    .local v3, minFree:I
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, values:[Ljava/lang/String;
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "pref_minfree"

    aget-object v7, v4, v10

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, closestValue:Ljava/lang/String;
    const/16 v5, 0x25

    if-ge v3, v5, :cond_1

    .line 83
    aget-object v0, v4, v10

    .line 93
    :goto_0
    const-string v5, "pref_minfree"

    invoke-virtual {p0, v5}, Lcom/brewcrewfoo/performance/fragments/Advanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mFreeMem:Landroid/preference/ListPreference;

    .line 94
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mFreeMem:Landroid/preference/ListPreference;

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 95
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mFreeMem:Landroid/preference/ListPreference;

    const v6, 0x7f08001f

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mb"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    const-string v5, "pref_read_ahead"

    invoke-virtual {p0, v5}, Lcom/brewcrewfoo/performance/fragments/Advanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mReadAhead:Landroid/preference/ListPreference;

    .line 98
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mReadAhead:Landroid/preference/ListPreference;

    const-string v6, "/sys/devices/virtual/bdi/179:0/read_ahead_kb"

    invoke-static {v6}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 99
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mReadAhead:Landroid/preference/ListPreference;

    const v6, 0x7f080022

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/sys/devices/virtual/bdi/179:0/read_ahead_kb"

    invoke-static {v9}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " kb"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    const-string v5, "pref_fast_charge"

    invoke-virtual {p0, v5}, Lcom/brewcrewfoo/performance/fragments/Advanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mFastCharge:Landroid/preference/CheckBoxPreference;

    .line 103
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mFastCharge:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "pref_fast_charge"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    const-string v5, "pref_dirty_ratio"

    invoke-virtual {p0, v5}, Lcom/brewcrewfoo/performance/fragments/Advanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mDirtyRatio:Landroid/preference/Preference;

    .line 106
    const-string v5, "pref_dirty_background"

    invoke-virtual {p0, v5}, Lcom/brewcrewfoo/performance/fragments/Advanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mDirtyBackground:Landroid/preference/Preference;

    .line 107
    const-string v5, "pref_dirty_expire"

    invoke-virtual {p0, v5}, Lcom/brewcrewfoo/performance/fragments/Advanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mDirtyExpireCentisecs:Landroid/preference/Preference;

    .line 108
    const-string v5, "pref_dirty_writeback"

    invoke-virtual {p0, v5}, Lcom/brewcrewfoo/performance/fragments/Advanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mDirtyWriteback:Landroid/preference/Preference;

    .line 109
    const-string v5, "pref_min_free_kb"

    invoke-virtual {p0, v5}, Lcom/brewcrewfoo/performance/fragments/Advanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mMinFreeK:Landroid/preference/Preference;

    .line 110
    const-string v5, "pref_overcommit"

    invoke-virtual {p0, v5}, Lcom/brewcrewfoo/performance/fragments/Advanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mOvercommit:Landroid/preference/Preference;

    .line 111
    const-string v5, "pref_swappiness"

    invoke-virtual {p0, v5}, Lcom/brewcrewfoo/performance/fragments/Advanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mSwappiness:Landroid/preference/Preference;

    .line 112
    const-string v5, "pref_vfs"

    invoke-virtual {p0, v5}, Lcom/brewcrewfoo/performance/fragments/Advanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mVfs:Landroid/preference/Preference;

    .line 114
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mDirtyRatio:Landroid/preference/Preference;

    const-string v6, "/proc/sys/vm/dirty_ratio"

    invoke-static {v6}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mDirtyBackground:Landroid/preference/Preference;

    const-string v6, "/proc/sys/vm/dirty_background_ratio"

    invoke-static {v6}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mDirtyExpireCentisecs:Landroid/preference/Preference;

    const-string v6, "/proc/sys/vm/dirty_expire_centisecs"

    invoke-static {v6}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mDirtyWriteback:Landroid/preference/Preference;

    const-string v6, "/proc/sys/vm/dirty_writeback_centisecs"

    invoke-static {v6}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mMinFreeK:Landroid/preference/Preference;

    const-string v6, "/proc/sys/vm/min_free_kbytes"

    invoke-static {v6}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mOvercommit:Landroid/preference/Preference;

    const-string v6, "/proc/sys/vm/overcommit_ratio"

    invoke-static {v6}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mSwappiness:Landroid/preference/Preference;

    const-string v6, "/proc/sys/vm/swappiness"

    invoke-static {v6}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mVfs:Landroid/preference/Preference;

    const-string v6, "/proc/sys/vm/vfs_cache_pressure"

    invoke-static {v6}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/kernel/fast_charge/force_fast_charge"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    .line 126
    .local v1, fChargeExists:Z
    if-nez v1, :cond_0

    .line 127
    const-string v5, "kernel"

    invoke-virtual {p0, v5}, Lcom/brewcrewfoo/performance/fragments/Advanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 128
    .local v2, kernelCat:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    .end local v2           #kernelCat:Landroid/preference/PreferenceCategory;
    :cond_0
    invoke-virtual {p0, v11}, Lcom/brewcrewfoo/performance/fragments/Advanced;->setHasOptionsMenu(Z)V

    .line 132
    return-void

    .line 84
    .end local v1           #fChargeExists:Z
    :cond_1
    const/16 v5, 0x3e

    if-ge v3, v5, :cond_2

    .line 85
    aget-object v0, v4, v11

    goto/16 :goto_0

    .line 86
    :cond_2
    const/16 v5, 0x4d

    if-ge v3, v5, :cond_3

    .line 87
    const/4 v5, 0x2

    aget-object v0, v4, v5

    goto/16 :goto_0

    .line 88
    :cond_3
    const/16 v5, 0x5a

    if-ge v3, v5, :cond_4

    .line 89
    const/4 v5, 0x3

    aget-object v0, v4, v5

    goto/16 :goto_0

    .line 91
    :cond_4
    const/4 v5, 0x4

    aget-object v0, v4, v5

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 141
    const/high16 v0, 0x7f0a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 142
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b003b

    if-ne v0, v1, :cond_0

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/brewcrewfoo/performance/activities/PCSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->startActivity(Landroid/content/Intent;)V

    .line 150
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v9, 0x1

    .line 156
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, key:Ljava/lang/String;
    const-string v0, "pref_fast_charge"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "pref_fast_charge"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 159
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 161
    .local v8, warningMessage:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v4, "Cancel"

    new-instance v5, Lcom/brewcrewfoo/performance/fragments/Advanced$2;

    invoke-direct {v5, p0}, Lcom/brewcrewfoo/performance/fragments/Advanced$2;-><init>(Lcom/brewcrewfoo/performance/fragments/Advanced;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v4, "OK"

    new-instance v5, Lcom/brewcrewfoo/performance/fragments/Advanced$1;

    invoke-direct {v5, p0}, Lcom/brewcrewfoo/performance/fragments/Advanced$1;-><init>(Lcom/brewcrewfoo/performance/fragments/Advanced;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v9

    .line 255
    .end local v8           #warningMessage:Ljava/lang/String;
    :goto_0
    return v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mDirtyRatio:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 190
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, title:Ljava/lang/String;
    const-string v0, "/proc/sys/vm/dirty_ratio"

    invoke-static {v0}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 193
    .local v1, currentProgress:I
    const/16 v3, 0x64

    .line 194
    .local v3, max:I
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mDirtyRatio:Landroid/preference/Preference;

    const-string v5, "/proc/sys/vm/dirty_ratio"

    const-string v6, "pref_dirty_ratio"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/brewcrewfoo/performance/fragments/Advanced;->openDialog(ILjava/lang/String;ILandroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 196
    goto :goto_0

    .line 197
    .end local v1           #currentProgress:I
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #max:I
    :cond_1
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mDirtyBackground:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 198
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    .restart local v2       #title:Ljava/lang/String;
    const-string v0, "/proc/sys/vm/dirty_background_ratio"

    invoke-static {v0}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 201
    .restart local v1       #currentProgress:I
    const/16 v3, 0x64

    .line 202
    .restart local v3       #max:I
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mDirtyBackground:Landroid/preference/Preference;

    const-string v5, "/proc/sys/vm/dirty_background_ratio"

    const-string v6, "pref_dirty_background"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/brewcrewfoo/performance/fragments/Advanced;->openDialog(ILjava/lang/String;ILandroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 204
    goto :goto_0

    .line 205
    .end local v1           #currentProgress:I
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #max:I
    :cond_2
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mDirtyExpireCentisecs:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    .line 206
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    .restart local v2       #title:Ljava/lang/String;
    const-string v0, "/proc/sys/vm/dirty_expire_centisecs"

    invoke-static {v0}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 209
    .restart local v1       #currentProgress:I
    const/16 v3, 0x1f4

    .line 210
    .restart local v3       #max:I
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mDirtyExpireCentisecs:Landroid/preference/Preference;

    const-string v5, "/proc/sys/vm/dirty_expire_centisecs"

    const-string v6, "pref_dirty_expire"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/brewcrewfoo/performance/fragments/Advanced;->openDialog(ILjava/lang/String;ILandroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 212
    goto :goto_0

    .line 213
    .end local v1           #currentProgress:I
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #max:I
    :cond_3
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mDirtyWriteback:Landroid/preference/Preference;

    if-ne p2, v0, :cond_4

    .line 214
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 215
    .restart local v2       #title:Ljava/lang/String;
    const-string v0, "/proc/sys/vm/dirty_writeback_centisecs"

    invoke-static {v0}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 217
    .restart local v1       #currentProgress:I
    const/16 v3, 0x1f4

    .line 218
    .restart local v3       #max:I
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mDirtyWriteback:Landroid/preference/Preference;

    const-string v5, "/proc/sys/vm/dirty_writeback_centisecs"

    const-string v6, "pref_dirty_writeback"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/brewcrewfoo/performance/fragments/Advanced;->openDialog(ILjava/lang/String;ILandroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 220
    goto/16 :goto_0

    .line 221
    .end local v1           #currentProgress:I
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #max:I
    :cond_4
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mMinFreeK:Landroid/preference/Preference;

    if-ne p2, v0, :cond_5

    .line 222
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 223
    .restart local v2       #title:Ljava/lang/String;
    const-string v0, "/proc/sys/vm/min_free_kbytes"

    invoke-static {v0}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 225
    .restart local v1       #currentProgress:I
    const/16 v3, 0x2000

    .line 226
    .restart local v3       #max:I
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mMinFreeK:Landroid/preference/Preference;

    const-string v5, "/proc/sys/vm/min_free_kbytes"

    const-string v6, "pref_min_free_kb"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/brewcrewfoo/performance/fragments/Advanced;->openDialog(ILjava/lang/String;ILandroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 228
    goto/16 :goto_0

    .line 229
    .end local v1           #currentProgress:I
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #max:I
    :cond_5
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mOvercommit:Landroid/preference/Preference;

    if-ne p2, v0, :cond_6

    .line 230
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 231
    .restart local v2       #title:Ljava/lang/String;
    const-string v0, "/proc/sys/vm/overcommit_ratio"

    invoke-static {v0}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 233
    .restart local v1       #currentProgress:I
    const/16 v3, 0x64

    .line 234
    .restart local v3       #max:I
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mOvercommit:Landroid/preference/Preference;

    const-string v5, "/proc/sys/vm/overcommit_ratio"

    const-string v6, "pref_overcommit"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/brewcrewfoo/performance/fragments/Advanced;->openDialog(ILjava/lang/String;ILandroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 236
    goto/16 :goto_0

    .line 237
    .end local v1           #currentProgress:I
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #max:I
    :cond_6
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mSwappiness:Landroid/preference/Preference;

    if-ne p2, v0, :cond_7

    .line 238
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    .restart local v2       #title:Ljava/lang/String;
    const-string v0, "/proc/sys/vm/swappiness"

    invoke-static {v0}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 241
    .restart local v1       #currentProgress:I
    const/16 v3, 0x64

    .line 242
    .restart local v3       #max:I
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mSwappiness:Landroid/preference/Preference;

    const-string v5, "/proc/sys/vm/swappiness"

    const-string v6, "pref_swappiness"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/brewcrewfoo/performance/fragments/Advanced;->openDialog(ILjava/lang/String;ILandroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 244
    goto/16 :goto_0

    .line 245
    .end local v1           #currentProgress:I
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #max:I
    :cond_7
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mVfs:Landroid/preference/Preference;

    if-ne p2, v0, :cond_8

    .line 246
    const v0, 0x7f080047

    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 247
    .restart local v2       #title:Ljava/lang/String;
    const-string v0, "/proc/sys/vm/vfs_cache_pressure"

    invoke-static {v0}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 249
    .restart local v1       #currentProgress:I
    const/16 v3, 0xc8

    .line 250
    .restart local v3       #max:I
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mVfs:Landroid/preference/Preference;

    const-string v5, "/proc/sys/vm/vfs_cache_pressure"

    const-string v6, "pref_vfs"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/brewcrewfoo/performance/fragments/Advanced;->openDialog(ILjava/lang/String;ILandroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 252
    goto/16 :goto_0

    .line 255
    .end local v1           #currentProgress:I
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #max:I
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 137
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 261
    const-string v1, "pref_minfree"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, values:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    new-instance v1, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct {v1}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    iget-object v1, v1, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "busybox echo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mFreeMem:Landroid/preference/ListPreference;

    const v2, 0x7f08001f

    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getMinFreeValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 276
    .end local v0           #values:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 268
    :cond_2
    const-string v1, "pref_read_ahead"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .restart local v0       #values:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 271
    new-instance v1, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct {v1}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    iget-object v1, v1, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "busybox echo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sys/devices/virtual/bdi/179:0/read_ahead_kb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 273
    :cond_3
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->mReadAhead:Landroid/preference/ListPreference;

    const v2, 0x7f080022

    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sys/devices/virtual/bdi/179:0/read_ahead_kb"

    invoke-static {v5}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public openDialog(ILjava/lang/String;ILandroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "currentProgress"
    .parameter "title"
    .parameter "max"
    .parameter "pref"
    .parameter "path"
    .parameter "key"

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 302
    .local v11, res:Landroid/content/res/Resources;
    const v1, 0x7f080016

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 303
    .local v8, cancel:Ljava/lang/String;
    const v1, 0x7f080015

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 304
    .local v10, ok:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 305
    .local v9, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 307
    .local v7, alphaDialog:Landroid/view/View;
    const v1, 0x7f0b001e

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 309
    .local v3, seekbar:Landroid/widget/SeekBar;
    invoke-virtual {v3, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 310
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 312
    const v1, 0x7f0b001d

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->settingText:Landroid/widget/EditText;

    .line 313
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->settingText:Landroid/widget/EditText;

    new-instance v2, Lcom/brewcrewfoo/performance/fragments/Advanced$3;

    invoke-direct {v2, p0, v3}, Lcom/brewcrewfoo/performance/fragments/Advanced$3;-><init>(Lcom/brewcrewfoo/performance/fragments/Advanced;Landroid/widget/SeekBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 327
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->settingText:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/Advanced;->settingText:Landroid/widget/EditText;

    new-instance v2, Lcom/brewcrewfoo/performance/fragments/Advanced$4;

    move/from16 v0, p3

    invoke-direct {v2, p0, v0}, Lcom/brewcrewfoo/performance/fragments/Advanced$4;-><init>(Lcom/brewcrewfoo/performance/fragments/Advanced;I)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 351
    new-instance v12, Lcom/brewcrewfoo/performance/fragments/Advanced$5;

    invoke-direct {v12, p0}, Lcom/brewcrewfoo/performance/fragments/Advanced$5;-><init>(Lcom/brewcrewfoo/performance/fragments/Advanced;)V

    .line 367
    .local v12, seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-virtual {v3, v12}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 369
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/brewcrewfoo/performance/fragments/Advanced$7;

    invoke-direct {v2, p0}, Lcom/brewcrewfoo/performance/fragments/Advanced$7;-><init>(Lcom/brewcrewfoo/performance/fragments/Advanced;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    new-instance v1, Lcom/brewcrewfoo/performance/fragments/Advanced$6;

    move-object v2, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/brewcrewfoo/performance/fragments/Advanced$6;-><init>(Lcom/brewcrewfoo/performance/fragments/Advanced;Landroid/widget/SeekBar;Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v10, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 396
    return-void
.end method
