.class Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brewcrewfoo/performance/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TitleAdapter"
.end annotation


# instance fields
.field private frags:[Landroid/app/Fragment;

.field final synthetic this$0:Lcom/brewcrewfoo/performance/activities/MainActivity;

.field titles:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/brewcrewfoo/performance/activities/MainActivity;Landroid/app/FragmentManager;)V
    .locals 6
    .parameter
    .parameter "fm"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    iput-object p1, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;->this$0:Lcom/brewcrewfoo/performance/activities/MainActivity;

    .line 80
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 76
    iget-object v0, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;->this$0:Lcom/brewcrewfoo/performance/activities/MainActivity;

    #calls: Lcom/brewcrewfoo/performance/activities/MainActivity;->getTitles()[Ljava/lang/String;
    invoke-static {v0}, Lcom/brewcrewfoo/performance/activities/MainActivity;->access$000(Lcom/brewcrewfoo/performance/activities/MainActivity;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;->titles:[Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;->titles:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/app/Fragment;

    iput-object v0, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;->frags:[Landroid/app/Fragment;

    .line 83
    invoke-static {}, Lcom/brewcrewfoo/performance/activities/MainActivity;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;->frags:[Landroid/app/Fragment;

    new-instance v1, Lcom/brewcrewfoo/performance/fragments/CPUSettings;

    invoke-direct {v1}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;-><init>()V

    aput-object v1, v0, v2

    .line 85
    iget-object v0, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;->frags:[Landroid/app/Fragment;

    new-instance v1, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    invoke-direct {v1}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;-><init>()V

    aput-object v1, v0, v3

    .line 86
    iget-object v0, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;->frags:[Landroid/app/Fragment;

    new-instance v1, Lcom/brewcrewfoo/performance/fragments/Advanced;

    invoke-direct {v1}, Lcom/brewcrewfoo/performance/fragments/Advanced;-><init>()V

    aput-object v1, v0, v4

    .line 87
    iget-object v0, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;->frags:[Landroid/app/Fragment;

    new-instance v1, Lcom/brewcrewfoo/performance/fragments/TimeInState;

    invoke-direct {v1}, Lcom/brewcrewfoo/performance/fragments/TimeInState;-><init>()V

    aput-object v1, v0, v5

    .line 88
    iget-object v0, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;->frags:[Landroid/app/Fragment;

    const/4 v1, 0x4

    new-instance v2, Lcom/brewcrewfoo/performance/fragments/CPUInfo;

    invoke-direct {v2}, Lcom/brewcrewfoo/performance/fragments/CPUInfo;-><init>()V

    aput-object v2, v0, v1

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;->frags:[Landroid/app/Fragment;

    new-instance v1, Lcom/brewcrewfoo/performance/fragments/CPUSettings;

    invoke-direct {v1}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;-><init>()V

    aput-object v1, v0, v2

    .line 91
    iget-object v0, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;->frags:[Landroid/app/Fragment;

    new-instance v1, Lcom/brewcrewfoo/performance/fragments/Advanced;

    invoke-direct {v1}, Lcom/brewcrewfoo/performance/fragments/Advanced;-><init>()V

    aput-object v1, v0, v3

    .line 92
    iget-object v0, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;->frags:[Landroid/app/Fragment;

    new-instance v1, Lcom/brewcrewfoo/performance/fragments/TimeInState;

    invoke-direct {v1}, Lcom/brewcrewfoo/performance/fragments/TimeInState;-><init>()V

    aput-object v1, v0, v4

    .line 93
    iget-object v0, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;->frags:[Landroid/app/Fragment;

    new-instance v1, Lcom/brewcrewfoo/performance/fragments/CPUInfo;

    invoke-direct {v1}, Lcom/brewcrewfoo/performance/fragments/CPUInfo;-><init>()V

    aput-object v1, v0, v5

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;->frags:[Landroid/app/Fragment;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;->frags:[Landroid/app/Fragment;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "position"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$TitleAdapter;->titles:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
