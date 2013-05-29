.class public Lcom/brewcrewfoo/performance/fragments/TimeInState;
.super Landroid/app/Fragment;
.source "TimeInState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brewcrewfoo/performance/fragments/TimeInState$RefreshStateDataTask;
    }
.end annotation


# static fields
.field private static preferences:Landroid/content/SharedPreferences;


# instance fields
.field private mAdditionalStates:Landroid/widget/TextView;

.field private mHeaderAdditionalStates:Landroid/widget/TextView;

.field private mHeaderTotalStateTime:Landroid/widget/TextView;

.field private mStatesView:Landroid/widget/LinearLayout;

.field private mStatesWarning:Landroid/widget/TextView;

.field private mTotalStateTime:Landroid/widget/TextView;

.field private mUpdatingData:Z

.field private monitor:Lcom/brewcrewfoo/performance/util/CPUStateMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mUpdatingData:Z

    .line 56
    new-instance v0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;

    invoke-direct {v0}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;-><init>()V

    iput-object v0, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->monitor:Lcom/brewcrewfoo/performance/util/CPUStateMonitor;

    .line 233
    return-void
.end method

.method static synthetic access$000(Lcom/brewcrewfoo/performance/fragments/TimeInState;)Lcom/brewcrewfoo/performance/util/CPUStateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->monitor:Lcom/brewcrewfoo/performance/util/CPUStateMonitor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/brewcrewfoo/performance/fragments/TimeInState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mUpdatingData:Z

    return p1
.end method

.method private generateStateRow(Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "state"
    .parameter "parent"

    .prologue
    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 202
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v13, 0x7f030007

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 205
    .local v12, view:Landroid/widget/LinearLayout;
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->duration:J

    long-to-float v13, v13

    const/high16 v14, 0x42c8

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->monitor:Lcom/brewcrewfoo/performance/util/CPUStateMonitor;

    invoke-virtual {v14}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->getTotalStateTime()J

    move-result-wide v14

    long-to-float v14, v14

    div-float v5, v13, v14

    .line 206
    .local v5, per:F
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 209
    .local v9, sPer:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v13, v0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->freq:I

    if-nez v13, :cond_0

    .line 210
    const v13, 0x7f08004c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 215
    .local v8, sFreq:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->duration:J

    const-wide/16 v15, 0x64

    div-long v10, v13, v15

    .line 216
    .local v10, tSec:J
    invoke-static {v10, v11}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 218
    .local v7, sDur:Ljava/lang/String;
    const v13, 0x7f0b0020

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 219
    .local v3, freqText:Landroid/widget/TextView;
    const v13, 0x7f0b0021

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 220
    .local v2, durText:Landroid/widget/TextView;
    const v13, 0x7f0b0022

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 222
    .local v6, perText:Landroid/widget/TextView;
    const v13, 0x7f0b0023

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 224
    .local v1, bar:Landroid/widget/ProgressBar;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    float-to-int v13, v5

    invoke-virtual {v1, v13}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 229
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 230
    return-object v12

    .line 212
    .end local v1           #bar:Landroid/widget/ProgressBar;
    .end local v2           #durText:Landroid/widget/TextView;
    .end local v3           #freqText:Landroid/widget/TextView;
    .end local v6           #perText:Landroid/widget/TextView;
    .end local v7           #sDur:Ljava/lang/String;
    .end local v8           #sFreq:Ljava/lang/String;
    .end local v10           #tSec:J
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v14, v0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->freq:I

    div-int/lit16 v14, v14, 0x3e8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " MHz"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #sFreq:Ljava/lang/String;
    goto :goto_0
.end method

.method private static toString(J)Ljava/lang/String;
    .locals 13
    .parameter "tSec"

    .prologue
    const-wide/16 v11, 0xa

    const-wide/16 v9, 0x3c

    .line 185
    const-wide/16 v7, 0xe10

    div-long v7, p0, v7

    long-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-long v0, v7

    .line 186
    .local v0, h:J
    mul-long v7, v0, v9

    mul-long/2addr v7, v9

    sub-long v7, p0, v7

    div-long/2addr v7, v9

    long-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-long v2, v7

    .line 187
    .local v2, m:J
    rem-long v4, p0, v9

    .line 189
    .local v4, s:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, sDur:Ljava/lang/String;
    cmp-long v7, v2, v11

    if-gez v7, :cond_0

    .line 191
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 192
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 193
    cmp-long v7, v4, v11

    if-gez v7, :cond_1

    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 195
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 197
    return-object v6
.end method


# virtual methods
.method public loadOffsets()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 257
    sget-object v8, Lcom/brewcrewfoo/performance/fragments/TimeInState;->preferences:Landroid/content/SharedPreferences;

    const-string v9, "pref_offsets"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 258
    .local v6, prefs:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v11, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 263
    .local v4, offsets:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 264
    .local v7, sOffsets:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 265
    .local v3, offset:Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, parts:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v9, v5, v11

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 269
    .end local v3           #offset:Ljava/lang/String;
    .end local v5           #parts:[Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->monitor:Lcom/brewcrewfoo/performance/util/CPUStateMonitor;

    invoke-virtual {v8, v4}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->setOffsets(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->preferences:Landroid/content/SharedPreferences;

    .line 65
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->loadOffsets()V

    .line 67
    if-eqz p1, :cond_0

    .line 68
    const-string v0, "updatingData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mUpdatingData:Z

    .line 71
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->setHasOptionsMenu(Z)V

    .line 72
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 108
    const v0, 0x7f0a0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 109
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 79
    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mStatesView:Landroid/widget/LinearLayout;

    .line 81
    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mAdditionalStates:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mHeaderAdditionalStates:Landroid/widget/TextView;

    .line 85
    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mHeaderTotalStateTime:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mStatesWarning:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mTotalStateTime:Landroid/widget/TextView;

    .line 91
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b003c

    if-ne v0, v1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->refreshData()V

    .line 131
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b003d

    if-ne v0, v1, :cond_2

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->monitor:Lcom/brewcrewfoo/performance/util/CPUStateMonitor;

    invoke-virtual {v0}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->setOffsets()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->saveOffsets()V

    .line 122
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->updateView()V

    goto :goto_0

    .line 123
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b003e

    if-ne v0, v1, :cond_3

    .line 124
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->monitor:Lcom/brewcrewfoo/performance/util/CPUStateMonitor;

    invoke-virtual {v0}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->removeOffsets()V

    .line 125
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->saveOffsets()V

    .line 126
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->updateView()V

    goto :goto_0

    .line 127
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b003b

    if-ne v0, v1, :cond_0

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/brewcrewfoo/performance/activities/PCSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 103
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->refreshData()V

    .line 104
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 97
    const-string v0, "updatingData"

    iget-boolean v1, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mUpdatingData:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    return-void
.end method

.method public refreshData()V
    .locals 4

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mUpdatingData:Z

    if-nez v0, :cond_0

    .line 180
    new-instance v1, Lcom/brewcrewfoo/performance/fragments/TimeInState$RefreshStateDataTask;

    invoke-direct {v1, p0}, Lcom/brewcrewfoo/performance/fragments/TimeInState$RefreshStateDataTask;-><init>(Lcom/brewcrewfoo/performance/fragments/TimeInState;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/brewcrewfoo/performance/fragments/TimeInState$RefreshStateDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 182
    :cond_0
    return-void
.end method

.method public saveOffsets()V
    .locals 6

    .prologue
    .line 273
    sget-object v4, Lcom/brewcrewfoo/performance/fragments/TimeInState;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 275
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, ""

    .line 276
    .local v3, str:Ljava/lang/String;
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->monitor:Lcom/brewcrewfoo/performance/util/CPUStateMonitor;

    invoke-virtual {v4}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->getOffsets()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 277
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 280
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_0
    const-string v4, "pref_offsets"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 281
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 282
    return-void
.end method

.method public updateView()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/16 v13, 0x8

    .line 135
    iget-object v9, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mStatesView:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, extraStates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->monitor:Lcom/brewcrewfoo/performance/util/CPUStateMonitor;

    invoke-virtual {v9}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->getStates()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;

    .line 138
    .local v5, state:Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;
    iget-wide v9, v5, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->duration:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_0

    .line 139
    iget-object v9, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mStatesView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v5, v9}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->generateStateRow(Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 141
    :cond_0
    iget v9, v5, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->freq:I

    if-nez v9, :cond_1

    .line 142
    const v9, 0x7f08004c

    invoke-virtual {p0, v9}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v5, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->freq:I

    div-int/lit16 v10, v10, 0x3e8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MHz"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    .end local v5           #state:Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;
    :cond_2
    iget-object v9, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->monitor:Lcom/brewcrewfoo/performance/util/CPUStateMonitor;

    invoke-virtual {v9}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->getStates()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 150
    iget-object v9, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mStatesWarning:Landroid/widget/TextView;

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v9, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mHeaderTotalStateTime:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v9, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mTotalStateTime:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v9, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mStatesView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    :cond_3
    iget-object v9, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->monitor:Lcom/brewcrewfoo/performance/util/CPUStateMonitor;

    invoke-virtual {v9}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->getTotalStateTime()J

    move-result-wide v9

    const-wide/16 v11, 0x64

    div-long v7, v9, v11

    .line 157
    .local v7, totTime:J
    iget-object v9, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mTotalStateTime:Landroid/widget/TextView;

    invoke-static {v7, v8}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, n:I
    const-string v6, ""

    .line 163
    .local v6, str:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 164
    .local v4, s:Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #n:I
    .local v3, n:I
    if-lez v2, :cond_4

    .line 165
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 166
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v2, v3

    .end local v3           #n:I
    .restart local v2       #n:I
    goto :goto_1

    .line 169
    .end local v4           #s:Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mAdditionalStates:Landroid/widget/TextView;

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v9, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mHeaderAdditionalStates:Landroid/widget/TextView;

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v9, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mAdditionalStates:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .end local v2           #n:I
    .end local v6           #str:Ljava/lang/String;
    :goto_2
    return-void

    .line 173
    :cond_6
    iget-object v9, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mAdditionalStates:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v9, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState;->mHeaderAdditionalStates:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
