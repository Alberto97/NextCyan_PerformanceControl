.class public Lcom/brewcrewfoo/performance/activities/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;
    }
.end annotation


# static fields
.field private static mVoltageExists:Z


# instance fields
.field private mIsLightTheme:Z

.field mPagerTabStrip:Landroid/support/v4/view/PagerTabStrip;

.field mPreferences:Landroid/content/SharedPreferences;

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/brewcrewfoo/performance/activities/MainActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getTitles()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/brewcrewfoo/performance/activities/MainActivity;->mVoltageExists:Z

    return v0
.end method

.method static synthetic access$200(Lcom/brewcrewfoo/performance/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/brewcrewfoo/performance/activities/MainActivity;->suResultDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkForSu()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 126
    iget-object v5, p0, Lcom/brewcrewfoo/performance/activities/MainActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "firstrun"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 128
    .local v1, firstrun:Z
    iget-object v5, p0, Lcom/brewcrewfoo/performance/activities/MainActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "rootcanceled"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 132
    .local v4, rootWasCanceled:Z
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 133
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 135
    .local v3, rcInstalled:Z
    :try_start_0
    const-string v5, "com.aokp.romcontrol"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    const/4 v3, 0x1

    .line 143
    :goto_0
    if-nez v1, :cond_0

    if-eqz v4, :cond_1

    .line 144
    :cond_0
    iget-object v5, p0, Lcom/brewcrewfoo/performance/activities/MainActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v5, "firstrun"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    if-eqz v3, :cond_2

    .line 148
    invoke-static {}, Lcom/brewcrewfoo/performance/util/Helpers;->checkSu()Z

    .line 153
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_1
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0

    .line 150
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    :cond_2
    invoke-direct {p0}, Lcom/brewcrewfoo/performance/activities/MainActivity;->launchFirstRunDialog()V

    goto :goto_1
.end method

.method private getTitles()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 235
    sget-boolean v1, Lcom/brewcrewfoo/performance/activities/MainActivity;->mVoltageExists:Z

    if-eqz v1, :cond_0

    .line 236
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    const v1, 0x7f080006

    invoke-virtual {p0, v1}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f080007

    invoke-virtual {p0, v1}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f080008

    invoke-virtual {p0, v1}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f080009

    invoke-virtual {p0, v1}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f08000a

    invoke-virtual {p0, v1}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 249
    .local v0, titleString:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 243
    .end local v0           #titleString:[Ljava/lang/String;
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    const v1, 0x7f080006

    invoke-virtual {p0, v1}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f080008

    invoke-virtual {p0, v1}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f080009

    invoke-virtual {p0, v1}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f08000a

    invoke-virtual {p0, v1}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .restart local v0       #titleString:[Ljava/lang/String;
    goto :goto_0
.end method

.method private launchFirstRunDialog()V
    .locals 8

    .prologue
    .line 159
    const v5, 0x7f080050

    invoke-virtual {p0, v5}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, title:Ljava/lang/String;
    const v5, 0x7f080052

    invoke-virtual {p0, v5}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, failedTitle:Ljava/lang/String;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 162
    .local v0, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 163
    .local v2, firstRunDialog:Landroid/view/View;
    const v5, 0x7f0b0024

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 164
    .local v4, tv:Landroid/widget/TextView;
    const v5, 0x7f080053

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 165
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Cancel"

    new-instance v7, Lcom/brewcrewfoo/performance/activities/MainActivity$2;

    invoke-direct {v7, p0, v1}, Lcom/brewcrewfoo/performance/activities/MainActivity$2;-><init>(Lcom/brewcrewfoo/performance/activities/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "OK"

    new-instance v7, Lcom/brewcrewfoo/performance/activities/MainActivity$1;

    invoke-direct {v7, p0, v1}, Lcom/brewcrewfoo/performance/activities/MainActivity$1;-><init>(Lcom/brewcrewfoo/performance/activities/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 203
    return-void
.end method

.method private suResultDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .parameter "message"

    .prologue
    .line 213
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 214
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030008

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 215
    .local v1, suResultDialog:Landroid/view/View;
    const v3, 0x7f0b0024

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 216
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "OK"

    new-instance v5, Lcom/brewcrewfoo/performance/activities/MainActivity$3;

    invoke-direct {v5, p0}, Lcom/brewcrewfoo/performance/activities/MainActivity$3;-><init>(Lcom/brewcrewfoo/performance/activities/MainActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 224
    return-void
.end method


# virtual methods
.method public isThemeChanged()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v2, p0, Lcom/brewcrewfoo/performance/activities/MainActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "use_light_theme"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 256
    .local v0, is_light_theme:Z
    iget-boolean v2, p0, Lcom/brewcrewfoo/performance/activities/MainActivity;->mIsLightTheme:Z

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/brewcrewfoo/performance/activities/MainActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 56
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/activities/MainActivity;->setTheme()V

    .line 57
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/brewcrewfoo/performance/activities/MainActivity;->setContentView(I)V

    .line 58
    invoke-static {}, Lcom/brewcrewfoo/performance/util/Helpers;->voltageFileExists()Z

    move-result v1

    sput-boolean v1, Lcom/brewcrewfoo/performance/activities/MainActivity;->mVoltageExists:Z

    .line 60
    const/high16 v1, 0x7f0b

    invoke-virtual {p0, v1}, Lcom/brewcrewfoo/performance/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/brewcrewfoo/performance/activities/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 61
    new-instance v0, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;

    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;-><init>(Lcom/brewcrewfoo/performance/activities/MainActivity;Landroid/app/FragmentManager;)V

    .line 62
    .local v0, titleAdapter:Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;
    iget-object v1, p0, Lcom/brewcrewfoo/performance/activities/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 63
    iget-object v1, p0, Lcom/brewcrewfoo/performance/activities/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 65
    const v1, 0x7f0b0001

    invoke-virtual {p0, v1}, Lcom/brewcrewfoo/performance/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/PagerTabStrip;

    iput-object v1, p0, Lcom/brewcrewfoo/performance/activities/MainActivity;->mPagerTabStrip:Landroid/support/v4/view/PagerTabStrip;

    .line 66
    iget-object v1, p0, Lcom/brewcrewfoo/performance/activities/MainActivity;->mPagerTabStrip:Landroid/support/v4/view/PagerTabStrip;

    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerTabStrip;->setBackgroundColor(I)V

    .line 68
    iget-object v1, p0, Lcom/brewcrewfoo/performance/activities/MainActivity;->mPagerTabStrip:Landroid/support/v4/view/PagerTabStrip;

    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 70
    iget-object v1, p0, Lcom/brewcrewfoo/performance/activities/MainActivity;->mPagerTabStrip:Landroid/support/v4/view/PagerTabStrip;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerTabStrip;->setDrawFullUnderline(Z)V

    .line 72
    invoke-direct {p0}, Lcom/brewcrewfoo/performance/activities/MainActivity;->checkForSu()V

    .line 73
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 116
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/activities/MainActivity;->isThemeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {p0}, Lcom/brewcrewfoo/performance/util/Helpers;->restartPC(Landroid/app/Activity;)V

    .line 119
    :cond_0
    return-void
.end method

.method public setTheme()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 261
    iget-object v1, p0, Lcom/brewcrewfoo/performance/activities/MainActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "use_light_theme"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 263
    .local v0, is_light_theme:Z
    iget-object v1, p0, Lcom/brewcrewfoo/performance/activities/MainActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "use_light_theme"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/brewcrewfoo/performance/activities/MainActivity;->mIsLightTheme:Z

    .line 264
    if-eqz v0, :cond_0

    const v1, 0x7f090004

    :goto_0
    invoke-virtual {p0, v1}, Lcom/brewcrewfoo/performance/activities/MainActivity;->setTheme(I)V

    .line 265
    return-void

    .line 264
    :cond_0
    const v1, 0x7f090003

    goto :goto_0
.end method
