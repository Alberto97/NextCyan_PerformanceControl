.class Lcom/brewcrewfoo/performance/fragments/CPUSettings$2;
.super Ljava/lang/Object;
.source "CPUSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brewcrewfoo/performance/fragments/CPUSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 151
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$2;->this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$2;->this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;

    #getter for: Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mGovernor:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->access$000(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)Landroid/widget/Spinner;

    move-result-object v0

    new-instance v1, Lcom/brewcrewfoo/performance/fragments/CPUSettings$GovListener;

    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$2;->this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;

    invoke-direct {v1, v2}, Lcom/brewcrewfoo/performance/fragments/CPUSettings$GovListener;-><init>(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 154
    return-void
.end method
