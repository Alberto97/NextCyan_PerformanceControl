.class public Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;
.super Landroid/app/Fragment;
.source "VoltageControlSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;,
        Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$CustomDialogFragment;
    }
.end annotation


# static fields
.field private static final STEPS:[I

.field private static mPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private mAdapter:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;

.field private mVoltage:Lcom/brewcrewfoo/performance/util/Voltage;

.field private mVoltages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/brewcrewfoo/performance/util/Voltage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    const/16 v0, 0x29

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->STEPS:[I

    return-void

    :array_0
    .array-data 0x4
        0x58t 0x2t 0x0t 0x0t
        0x71t 0x2t 0x0t 0x0t
        0x8at 0x2t 0x0t 0x0t
        0xa3t 0x2t 0x0t 0x0t
        0xbct 0x2t 0x0t 0x0t
        0xd5t 0x2t 0x0t 0x0t
        0xeet 0x2t 0x0t 0x0t
        0x7t 0x3t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0x39t 0x3t 0x0t 0x0t
        0x52t 0x3t 0x0t 0x0t
        0x6bt 0x3t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
        0x9dt 0x3t 0x0t 0x0t
        0xb6t 0x3t 0x0t 0x0t
        0xcft 0x3t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0x1t 0x4t 0x0t 0x0t
        0x1at 0x4t 0x0t 0x0t
        0x33t 0x4t 0x0t 0x0t
        0x4ct 0x4t 0x0t 0x0t
        0x65t 0x4t 0x0t 0x0t
        0x7et 0x4t 0x0t 0x0t
        0x97t 0x4t 0x0t 0x0t
        0xb0t 0x4t 0x0t 0x0t
        0xc9t 0x4t 0x0t 0x0t
        0xe2t 0x4t 0x0t 0x0t
        0xfbt 0x4t 0x0t 0x0t
        0x14t 0x5t 0x0t 0x0t
        0x2dt 0x5t 0x0t 0x0t
        0x46t 0x5t 0x0t 0x0t
        0x5ft 0x5t 0x0t 0x0t
        0x78t 0x5t 0x0t 0x0t
        0x91t 0x5t 0x0t 0x0t
        0xaat 0x5t 0x0t 0x0t
        0xc3t 0x5t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t
        0xf5t 0x5t 0x0t 0x0t
        0xet 0x6t 0x0t 0x0t
        0x27t 0x6t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 348
    return-void
.end method

.method static synthetic access$000()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mVoltages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;)Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mAdapter:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;)Lcom/brewcrewfoo/performance/util/Voltage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mVoltage:Lcom/brewcrewfoo/performance/util/Voltage;

    return-object v0
.end method

.method static synthetic access$302(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;Lcom/brewcrewfoo/performance/util/Voltage;)Lcom/brewcrewfoo/performance/util/Voltage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mVoltage:Lcom/brewcrewfoo/performance/util/Voltage;

    return-object p1
.end method

.method static synthetic access$400(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->getNearestStepIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->STEPS:[I

    return-object v0
.end method

.method private static getNearestStepIndex(I)I
    .locals 3
    .parameter "value"

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->STEPS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 188
    sget-object v2, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->STEPS:[I

    aget v2, v2, v0

    if-le p0, v2, :cond_0

    .line 189
    add-int/lit8 v1, v1, 0x1

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    return v1
.end method

.method public static getVolts(Landroid/content/SharedPreferences;)Ljava/util/List;
    .locals 12
    .parameter "preferences"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/brewcrewfoo/performance/util/Voltage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v8, volts:Ljava/util/List;,"Ljava/util/List<Lcom/brewcrewfoo/performance/util/Voltage;>;"
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-static {}, Lcom/brewcrewfoo/performance/util/Helpers;->getVoltagePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x100

    invoke-direct {v0, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 153
    .local v0, br:Ljava/io/BufferedReader;
    const-string v4, ""

    .line 154
    .local v4, line:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 155
    const-string v9, "\\s+"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, values:[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 157
    array-length v9, v6

    const/4 v10, 0x2

    if-lt v9, v10, :cond_0

    .line 158
    const/4 v9, 0x0

    aget-object v9, v6, v9

    const-string v10, "mhz:"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, freq:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v1, v6, v9

    .line 160
    .local v1, currentMv:Ljava/lang/String;
    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, savedMv:Ljava/lang/String;
    new-instance v7, Lcom/brewcrewfoo/performance/util/Voltage;

    invoke-direct {v7}, Lcom/brewcrewfoo/performance/util/Voltage;-><init>()V

    .line 163
    .local v7, voltage:Lcom/brewcrewfoo/performance/util/Voltage;
    invoke-virtual {v7, v3}, Lcom/brewcrewfoo/performance/util/Voltage;->setFreq(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v7, v1}, Lcom/brewcrewfoo/performance/util/Voltage;->setCurrentMV(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v7, v5}, Lcom/brewcrewfoo/performance/util/Voltage;->setSavedMV(Ljava/lang/String;)V

    .line 166
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 171
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #currentMv:Ljava/lang/String;
    .end local v3           #freq:Ljava/lang/String;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #savedMv:Ljava/lang/String;
    .end local v6           #values:[Ljava/lang/String;
    .end local v7           #voltage:Lcom/brewcrewfoo/performance/util/Voltage;
    :catch_0
    move-exception v2

    .line 172
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v9, "PerformanceControl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/brewcrewfoo/performance/util/Helpers;->getVoltagePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " does not exist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :goto_1
    return-object v8

    .line 170
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 173
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 174
    .local v2, e:Ljava/io/IOException;
    const-string v9, "PerformanceControl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error reading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/brewcrewfoo/performance/util/Helpers;->getVoltagePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mPreferences:Landroid/content/SharedPreferences;

    .line 65
    new-instance v0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;

    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;-><init>(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mAdapter:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;

    .line 66
    sget-object v0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->getVolts(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mVoltages:Ljava/util/List;

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->setHasOptionsMenu(Z)V

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 136
    const v0, 0x7f0a0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 137
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 73
    const v3, 0x7f03000c

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 75
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0b0030

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 76
    .local v0, listView:Landroid/widget/ListView;
    const v3, 0x7f0b0034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 78
    .local v1, setOnBoot:Landroid/widget/Switch;
    iget-object v3, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mVoltages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    const v3, 0x7f0b0032

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    const v3, 0x7f0b0031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    :cond_0
    sget-object v3, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "voltage_sob"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 86
    new-instance v3, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$1;

    invoke-direct {v3, p0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$1;-><init>(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;)V

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    const v3, 0x7f0b0035

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$2;

    invoke-direct {v4, p0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$2;-><init>(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v3, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mAdapter:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;

    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mVoltages:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;->setListItems(Ljava/util/List;)V

    .line 121
    iget-object v3, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mAdapter:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    new-instance v3, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$3;

    invoke-direct {v3, p0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$3;-><init>(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b003b

    if-ne v0, v1, :cond_0

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/brewcrewfoo/performance/activities/PCSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->startActivity(Landroid/content/Intent;)V

    .line 145
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected removeDialog(I)V
    .locals 6
    .parameter "pDialogId"

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 325
    .local v1, fm:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 326
    .local v3, ftr:Landroid/app/FragmentTransaction;
    const/4 v2, 0x0

    .line 327
    .local v2, fragmentDialog:Landroid/app/DialogFragment;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .end local v2           #fragmentDialog:Landroid/app/DialogFragment;
    check-cast v2, Landroid/app/DialogFragment;

    .line 328
    .restart local v2       #fragmentDialog:Landroid/app/DialogFragment;
    if-eqz v2, :cond_0

    .line 329
    invoke-virtual {v3, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 330
    .local v0, f:Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 332
    .end local v0           #f:Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 19
    .parameter "id"

    .prologue
    .line 198
    const/4 v3, 0x0

    .line 199
    .local v3, dialog:Landroid/app/AlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 308
    :goto_0
    if-eqz v3, :cond_1

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 310
    .local v5, fm:Landroid/app/FragmentManager;
    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 311
    .local v7, ftr:Landroid/app/FragmentTransaction;
    invoke-static {v3}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$CustomDialogFragment;->newInstance(Landroid/app/Dialog;)Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$CustomDialogFragment;

    move-result-object v8

    .line 313
    .local v8, newFragment:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$CustomDialogFragment;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Landroid/app/DialogFragment;

    .line 315
    .local v6, fragmentDialog:Landroid/app/DialogFragment;
    if-eqz v6, :cond_0

    .line 316
    invoke-virtual {v7, v6}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 317
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 319
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v5, v15}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$CustomDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 321
    .end local v5           #fm:Landroid/app/FragmentManager;
    .end local v6           #fragmentDialog:Landroid/app/DialogFragment;
    .end local v7           #ftr:Landroid/app/FragmentTransaction;
    .end local v8           #newFragment:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$CustomDialogFragment;
    :cond_1
    return-void

    .line 201
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 202
    .local v4, factory:Landroid/view/LayoutInflater;
    const v15, 0x7f03000b

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 205
    .local v11, voltageDialog:Landroid/view/View;
    const v15, 0x7f0b002d

    invoke-virtual {v11, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 207
    .local v12, voltageEdit:Landroid/widget/EditText;
    const v15, 0x7f0b002e

    invoke-virtual {v11, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/SeekBar;

    .line 209
    .local v14, voltageSeek:Landroid/widget/SeekBar;
    const v15, 0x7f0b002f

    invoke-virtual {v11, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 212
    .local v13, voltageMeter:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mVoltage:Lcom/brewcrewfoo/performance/util/Voltage;

    invoke-virtual {v15}, Lcom/brewcrewfoo/performance/util/Voltage;->getSavedMV()Ljava/lang/String;

    move-result-object v9

    .line 213
    .local v9, savedMv:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 214
    .local v10, savedVolt:I
    invoke-virtual {v12, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    new-instance v15, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12, v13, v14}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$4;-><init>(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 244
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mV"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    const/16 v15, 0x28

    invoke-virtual {v14, v15}, Landroid/widget/SeekBar;->setMax(I)V

    .line 246
    invoke-static {v10}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->getNearestStepIndex(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 247
    new-instance v15, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v13, v12}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$5;-><init>(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {v14, v15}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 274
    new-instance v15, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mVoltage:Lcom/brewcrewfoo/performance/util/Voltage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/brewcrewfoo/performance/util/Voltage;->getFreq()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080034

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f080035

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v12}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$7;-><init>(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;ILandroid/widget/EditText;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/16 v16, 0x0

    new-instance v17, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$6;-><init>(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;I)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 303
    goto/16 :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
