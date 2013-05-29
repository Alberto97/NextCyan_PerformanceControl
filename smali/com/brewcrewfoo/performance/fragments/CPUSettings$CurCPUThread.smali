.class public Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;
.super Ljava/lang/Thread;
.source "CPUSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brewcrewfoo/performance/fragments/CPUSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CurCPUThread"
.end annotation


# instance fields
.field private mInterrupt:Z

.field final synthetic this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;


# direct methods
.method protected constructor <init>(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;->this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;->mInterrupt:Z

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;->mInterrupt:Z

    .line 333
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 338
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;->mInterrupt:Z

    if-nez v2, :cond_0

    .line 339
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;->sleep(J)V

    .line 340
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-static {v2}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, curFreq:Ljava/lang/String;
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;->this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;

    iget-object v2, v2, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurCPUHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$CurCPUThread;->this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;

    iget-object v3, v3, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurCPUHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    .end local v0           #curFreq:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 347
    :cond_0
    return-void
.end method
