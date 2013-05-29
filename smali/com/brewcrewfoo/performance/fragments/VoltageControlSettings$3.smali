.class Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$3;
.super Ljava/lang/Object;
.source "VoltageControlSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;


# direct methods
.method constructor <init>(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$3;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
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
    .line 126
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$3;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$3;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    #getter for: Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mVoltages:Ljava/util/List;
    invoke-static {v0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->access$100(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brewcrewfoo/performance/util/Voltage;

    #setter for: Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mVoltage:Lcom/brewcrewfoo/performance/util/Voltage;
    invoke-static {v1, v0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->access$302(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;Lcom/brewcrewfoo/performance/util/Voltage;)Lcom/brewcrewfoo/performance/util/Voltage;

    .line 127
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$3;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->showDialog(I)V

    .line 128
    return-void
.end method
