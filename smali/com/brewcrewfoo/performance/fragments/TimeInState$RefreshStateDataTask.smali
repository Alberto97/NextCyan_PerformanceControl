.class public Lcom/brewcrewfoo/performance/fragments/TimeInState$RefreshStateDataTask;
.super Landroid/os/AsyncTask;
.source "TimeInState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brewcrewfoo/performance/fragments/TimeInState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RefreshStateDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brewcrewfoo/performance/fragments/TimeInState;


# direct methods
.method protected constructor <init>(Lcom/brewcrewfoo/performance/fragments/TimeInState;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState$RefreshStateDataTask;->this$0:Lcom/brewcrewfoo/performance/fragments/TimeInState;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/brewcrewfoo/performance/fragments/TimeInState$RefreshStateDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "v"

    .prologue
    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState$RefreshStateDataTask;->this$0:Lcom/brewcrewfoo/performance/fragments/TimeInState;

    #getter for: Lcom/brewcrewfoo/performance/fragments/TimeInState;->monitor:Lcom/brewcrewfoo/performance/util/CPUStateMonitor;
    invoke-static {v0}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->access$000(Lcom/brewcrewfoo/performance/fragments/TimeInState;)Lcom/brewcrewfoo/performance/util/CPUStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->updateStates()Ljava/util/List;
    :try_end_0
    .catch Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CPUStateMonitorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 233
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/brewcrewfoo/performance/fragments/TimeInState$RefreshStateDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState$RefreshStateDataTask;->this$0:Lcom/brewcrewfoo/performance/fragments/TimeInState;

    const/4 v1, 0x0

    #setter for: Lcom/brewcrewfoo/performance/fragments/TimeInState;->mUpdatingData:Z
    invoke-static {v0, v1}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->access$102(Lcom/brewcrewfoo/performance/fragments/TimeInState;Z)Z

    .line 251
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState$RefreshStateDataTask;->this$0:Lcom/brewcrewfoo/performance/fragments/TimeInState;

    invoke-virtual {v0}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->updateView()V

    .line 252
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/TimeInState$RefreshStateDataTask;->this$0:Lcom/brewcrewfoo/performance/fragments/TimeInState;

    const/4 v1, 0x1

    #setter for: Lcom/brewcrewfoo/performance/fragments/TimeInState;->mUpdatingData:Z
    invoke-static {v0, v1}, Lcom/brewcrewfoo/performance/fragments/TimeInState;->access$102(Lcom/brewcrewfoo/performance/fragments/TimeInState;Z)Z

    .line 246
    return-void
.end method
