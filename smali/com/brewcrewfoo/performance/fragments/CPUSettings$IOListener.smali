.class public Lcom/brewcrewfoo/performance/fragments/CPUSettings$IOListener;
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
    name = "IOListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;


# direct methods
.method public constructor <init>(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$IOListener;->this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 260
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, selected:Ljava/lang/String;
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

    const-string v3, "/sys/block/mmcblk0/queue/scheduler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 263
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$IOListener;->this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;

    const-string v2, "pref_io"

    #calls: Lcom/brewcrewfoo/performance/fragments/CPUSettings;->updateSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->access$300(Lcom/brewcrewfoo/performance/fragments/CPUSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
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
    .line 268
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
