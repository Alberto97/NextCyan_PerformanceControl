.class Lcom/brewcrewfoo/performance/fragments/CPUSettings$5;
.super Landroid/os/Handler;
.source "CPUSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brewcrewfoo/performance/fragments/CPUSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;


# direct methods
.method constructor <init>(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$5;->this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$5;->this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;

    #getter for: Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mCurFreq:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->access$400(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/brewcrewfoo/performance/util/Helpers;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    return-void
.end method
