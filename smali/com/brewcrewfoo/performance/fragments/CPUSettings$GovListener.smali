.class public Lcom/brewcrewfoo/performance/fragments/CPUSettings$GovListener;
.super Ljava/lang/Object;
.source "CPUSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brewcrewfoo/performance/fragments/CPUSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GovListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;


# direct methods
.method public constructor <init>(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$GovListener;->this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, selected:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/brewcrewfoo/performance/util/Helpers;->getNumOfCpus()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 246
    new-instance v2, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct {v2}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    iget-object v2, v2, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "busybox echo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    const-string v5, "cpu0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cpu"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$GovListener;->this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;

    const-string v3, "pref_gov"

    #calls: Lcom/brewcrewfoo/performance/fragments/CPUSettings;->updateSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->access$300(Lcom/brewcrewfoo/performance/fragments/CPUSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
