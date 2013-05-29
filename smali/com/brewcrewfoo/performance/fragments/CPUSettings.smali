.class public Lcom/brewcrewfoo/performance/fragments/CPUSettings;
.super Landroid/app/Fragment;
.source "CPUSettings.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;,
        Lcom/brewcrewfoo/performance/fragments/CPUSettings$IOListener;,
        Lcom/brewcrewfoo/performance/fragments/CPUSettings$GovListener;
    }
.end annotation


# instance fields
.field private mAvailableFrequencies:[Ljava/lang/String;

.field private mAvailableGovernors:[Ljava/lang/String;

.field private mAvailableIo:[Ljava/lang/String;

.field protected mCurCPUHandler:Landroid/os/Handler;

.field private mCurCPUThread:Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;

.field private mCurFreq:Landroid/widget/TextView;

.field private mCurMaxSpeed:Ljava/lang/String;

.field private mCurMinSpeed:Ljava/lang/String;

.field private mCurrentGovernor:Ljava/lang/String;

.field private mCurrentIo:Ljava/lang/String;

.field private mFrequenciesNum:I

.field private mGovernor:Landroid/widget/Spinner;

.field private mIo:Landroid/widget/Spinner;

.field private mIsTegra3:Z

.field private mMaxFreqSetting:Ljava/lang/String;

.field private mMaxSlider:Landroid/widget/SeekBar;

.field private mMaxSpeedText:Landroid/widget/TextView;

.field private mMinFreqSetting:Ljava/lang/String;

.field private mMinSlider:Landroid/widget/SeekBar;

.field private mMinSpeedText:Landroid/widget/TextView;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSetOnBoot:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mIsTegra3:Z

    .line 352
    new-instance v0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$5;

    invoke-direct {v0, p0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings$5;-><init>(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)V

    iput-object v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurCPUHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mGovernor:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mIo:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/brewcrewfoo/performance/fragments/CPUSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->updateSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurFreq:Landroid/widget/TextView;

    return-object v0
.end method

.method private updateSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "var"
    .parameter "value"

    .prologue
    .line 360
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 361
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 362
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 363
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mPreferences:Landroid/content/SharedPreferences;

    .line 76
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/module/cpu_tegra/parameters/cpu_user_cap"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    iput-boolean v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mIsTegra3:Z

    .line 77
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mAvailableFrequencies:[Ljava/lang/String;

    .line 79
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-static {v4}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, availableFrequenciesLine:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 81
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mAvailableFrequencies:[Ljava/lang/String;

    .line 82
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mAvailableFrequencies:[Ljava/lang/String;

    new-instance v5, Lcom/brewcrewfoo/performance/fragments/CPUSettings$1;

    invoke-direct {v5, p0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings$1;-><init>(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)V

    invoke-static {v4, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 91
    :cond_0
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mAvailableFrequencies:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mFrequenciesNum:I

    .line 92
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    invoke-static {v4}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mAvailableGovernors:[Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/brewcrewfoo/performance/util/Helpers;->getAvailableIOSchedulers()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mAvailableIo:[Ljava/lang/String;

    .line 96
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v4}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurrentGovernor:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/brewcrewfoo/performance/util/Helpers;->getIOScheduler()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurrentIo:Ljava/lang/String;

    .line 98
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {v4}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurMaxSpeed:Ljava/lang/String;

    .line 99
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-static {v4}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurMinSpeed:Ljava/lang/String;

    .line 101
    iget-boolean v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mIsTegra3:Z

    if-eqz v4, :cond_1

    .line 102
    const-string v4, "/sys/module/cpu_tegra/parameters/cpu_user_cap"

    invoke-static {v4}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, curTegraMaxSpeed:Ljava/lang/String;
    const/4 v1, 0x0

    .line 105
    .local v1, curTegraMax:I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 106
    if-lez v1, :cond_1

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurMaxSpeed:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v1           #curTegraMax:I
    .end local v2           #curTegraMaxSpeed:Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->setHasOptionsMenu(Z)V

    .line 115
    return-void

    .line 109
    .restart local v1       #curTegraMax:I
    .restart local v2       #curTegraMaxSpeed:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 110
    .local v3, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 192
    const v0, 0x7f0a0002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 193
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x1090009

    const v8, 0x1090008

    const/4 v7, 0x0

    .line 120
    const v4, 0x7f030003

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 122
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0b0005

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurFreq:Landroid/widget/TextView;

    .line 124
    const v4, 0x7f0b0008

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMaxSlider:Landroid/widget/SeekBar;

    .line 125
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMaxSlider:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mFrequenciesNum:I

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 126
    const v4, 0x7f0b0007

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMaxSpeedText:Landroid/widget/TextView;

    .line 127
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMaxSpeedText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurMaxSpeed:Ljava/lang/String;

    invoke-static {v5}, Lcom/brewcrewfoo/performance/util/Helpers;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMaxSlider:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mAvailableFrequencies:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurMaxSpeed:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 130
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMaxSlider:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 132
    const v4, 0x7f0b000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMinSlider:Landroid/widget/SeekBar;

    .line 133
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMinSlider:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mFrequenciesNum:I

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 134
    const v4, 0x7f0b000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMinSpeedText:Landroid/widget/TextView;

    .line 135
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMinSpeedText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurMinSpeed:Ljava/lang/String;

    invoke-static {v5}, Lcom/brewcrewfoo/performance/util/Helpers;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMinSlider:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mAvailableFrequencies:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurMinSpeed:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 138
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMinSlider:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 140
    const v4, 0x7f0b000d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mGovernor:Landroid/widget/Spinner;

    .line 141
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 143
    .local v0, governorAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 145
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mAvailableGovernors:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 146
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mAvailableGovernors:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_0
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mGovernor:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 149
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mGovernor:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mAvailableGovernors:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurrentGovernor:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 151
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mGovernor:Landroid/widget/Spinner;

    new-instance v5, Lcom/brewcrewfoo/performance/fragments/CPUSettings$2;

    invoke-direct {v5, p0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings$2;-><init>(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 157
    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mIo:Landroid/widget/Spinner;

    .line 158
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 160
    .local v2, ioAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 162
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mAvailableIo:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 163
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mAvailableIo:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 165
    :cond_1
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mIo:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 166
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mIo:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mAvailableIo:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurrentIo:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 167
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mIo:Landroid/widget/Spinner;

    new-instance v5, Lcom/brewcrewfoo/performance/fragments/CPUSettings$3;

    invoke-direct {v5, p0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings$3;-><init>(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 173
    const v4, 0x7f0b0011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mSetOnBoot:Landroid/widget/Switch;

    .line 174
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mSetOnBoot:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "cpu_sob"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 175
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mSetOnBoot:Landroid/widget/Switch;

    new-instance v5, Lcom/brewcrewfoo/performance/fragments/CPUSettings$4;

    invoke-direct {v5, p0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings$4;-><init>(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 187
    return-object v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 289
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurCPUThread:Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurCPUThread:Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;

    invoke-virtual {v0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurCPUThread:Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;

    invoke-virtual {v0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;->interrupt()V

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurCPUThread:Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;

    invoke-virtual {v0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b003b

    if-ne v0, v1, :cond_0

    .line 198
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/brewcrewfoo/performance/activities/PCSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->startActivity(Landroid/content/Intent;)V

    .line 201
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 283
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/brewcrewfoo/performance/util/Helpers;->updateAppWidget(Landroid/content/Context;)V

    .line 284
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 207
    if-eqz p3, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f0b0008

    if-ne v0, v1, :cond_1

    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->setMaxSpeed(Landroid/widget/SeekBar;I)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f0b000b

    if-ne v0, v1, :cond_0

    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->setMinSpeed(Landroid/widget/SeekBar;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 274
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurCPUThread:Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;

    invoke-direct {v0, p0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;-><init>(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)V

    iput-object v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurCPUThread:Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;

    .line 276
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurCPUThread:Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;

    invoke-virtual {v0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;->start()V

    .line 278
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 218
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7
    .parameter "seekBar"

    .prologue
    .line 224
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/brewcrewfoo/performance/util/Helpers;->getNumOfCpus()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 225
    new-instance v1, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct {v1}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    iget-object v1, v1, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "busybox echo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMaxFreqSetting:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    const-string v4, "cpu0"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cpu"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 227
    new-instance v1, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct {v1}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    iget-object v1, v1, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "busybox echo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMinFreqSetting:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    const-string v4, "cpu0"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cpu"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 231
    :cond_0
    iget-boolean v1, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mIsTegra3:Z

    if-eqz v1, :cond_1

    .line 232
    new-instance v1, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct {v1}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    iget-object v1, v1, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "busybox echo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMaxFreqSetting:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sys/module/cpu_tegra/parameters/cpu_user_cap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 235
    :cond_1
    return-void
.end method

.method public setMaxSpeed(Landroid/widget/SeekBar;I)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"

    .prologue
    .line 301
    const-string v0, ""

    .line 302
    .local v0, current:Ljava/lang/String;
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mAvailableFrequencies:[Ljava/lang/String;

    aget-object v0, v2, p2

    .line 303
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMinSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 304
    .local v1, minSliderProgress:I
    if-gt p2, v1, :cond_0

    .line 305
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMinSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 306
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMinSpeedText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/brewcrewfoo/performance/util/Helpers;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iput-object v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMinFreqSetting:Ljava/lang/String;

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMaxSpeedText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/brewcrewfoo/performance/util/Helpers;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iput-object v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMaxFreqSetting:Ljava/lang/String;

    .line 311
    const-string v2, "pref_max_cpu"

    invoke-direct {p0, v2, v0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->updateSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public setMinSpeed(Landroid/widget/SeekBar;I)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"

    .prologue
    .line 315
    const-string v0, ""

    .line 316
    .local v0, current:Ljava/lang/String;
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mAvailableFrequencies:[Ljava/lang/String;

    aget-object v0, v2, p2

    .line 317
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMaxSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 318
    .local v1, maxSliderProgress:I
    if-lt p2, v1, :cond_0

    .line 319
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMaxSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 320
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMaxSpeedText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/brewcrewfoo/performance/util/Helpers;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iput-object v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMaxFreqSetting:Ljava/lang/String;

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMinSpeedText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/brewcrewfoo/performance/util/Helpers;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iput-object v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mMinFreqSetting:Ljava/lang/String;

    .line 325
    const-string v2, "pref_min_cpu"

    invoke-direct {p0, v2, v0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->updateSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method
