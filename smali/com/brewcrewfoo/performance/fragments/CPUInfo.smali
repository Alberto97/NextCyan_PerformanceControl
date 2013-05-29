.class public Lcom/brewcrewfoo/performance/fragments/CPUInfo;
.super Landroid/app/Fragment;
.source "CPUInfo.java"


# instance fields
.field private mCPUInfo:Landroid/widget/TextView;

.field private mKernelInfo:Landroid/widget/TextView;

.field private mMemInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/fragments/CPUInfo;->setHasOptionsMenu(Z)V

    .line 44
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 69
    const v0, 0x7f0a0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    .line 49
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/brewcrewfoo/performance/fragments/CPUInfo;->mKernelInfo:Landroid/widget/TextView;

    .line 51
    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/brewcrewfoo/performance/fragments/CPUInfo;->mCPUInfo:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/brewcrewfoo/performance/fragments/CPUInfo;->mMemInfo:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/CPUInfo;->updateData()V

    .line 54
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b003c

    if-ne v0, v1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/CPUInfo;->updateData()V

    .line 80
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 76
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b003b

    if-ne v0, v1, :cond_0

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/fragments/CPUInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/brewcrewfoo/performance/activities/PCSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/fragments/CPUInfo;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public readFile(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 6
    .parameter "tView"
    .parameter "fName"

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, fr:Ljava/io/FileReader;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    .end local v1           #fr:Ljava/io/FileReader;
    .local v2, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 88
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, line:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 91
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    goto :goto_0

    .line 96
    :cond_0
    if-eqz v2, :cond_3

    .line 98
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 103
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v1       #fr:Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-void

    .line 99
    .end local v1           #fr:Ljava/io/FileReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v3       #line:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 100
    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto :goto_1

    .line 94
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 96
    :goto_2
    if-eqz v1, :cond_1

    .line 98
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 99
    :catch_2
    move-exception v4

    goto :goto_1

    .line 96
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_2

    .line 98
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 100
    :cond_2
    :goto_4
    throw v4

    .line 99
    :catch_3
    move-exception v5

    goto :goto_4

    .line 96
    .end local v1           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto :goto_3

    .line 94
    .end local v1           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto :goto_2

    .end local v1           #fr:Ljava/io/FileReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_3
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto :goto_1
.end method

.method public updateData()V
    .locals 3

    .prologue
    .line 58
    const-string v0, ""

    .line 59
    .local v0, newInfo:Ljava/lang/String;
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/CPUInfo;->mKernelInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/CPUInfo;->mCPUInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/CPUInfo;->mMemInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/CPUInfo;->mKernelInfo:Landroid/widget/TextView;

    const-string v2, "/proc/version"

    invoke-virtual {p0, v1, v2}, Lcom/brewcrewfoo/performance/fragments/CPUInfo;->readFile(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/CPUInfo;->mCPUInfo:Landroid/widget/TextView;

    const-string v2, "/proc/cpuinfo"

    invoke-virtual {p0, v1, v2}, Lcom/brewcrewfoo/performance/fragments/CPUInfo;->readFile(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/CPUInfo;->mMemInfo:Landroid/widget/TextView;

    const-string v2, "/proc/meminfo"

    invoke-virtual {p0, v1, v2}, Lcom/brewcrewfoo/performance/fragments/CPUInfo;->readFile(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 65
    return-void
.end method
