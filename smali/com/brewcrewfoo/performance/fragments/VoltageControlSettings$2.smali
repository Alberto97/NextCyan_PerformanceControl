.class Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$2;
.super Ljava/lang/Object;
.source "VoltageControlSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 99
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$2;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "arg0"

    .prologue
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$2;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    #getter for: Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mVoltages:Ljava/util/List;
    invoke-static {v5}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->access$100(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brewcrewfoo/performance/util/Voltage;

    .line 104
    .local v3, volt:Lcom/brewcrewfoo/performance/util/Voltage;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/brewcrewfoo/performance/util/Voltage;->getSavedMV()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 106
    .end local v3           #volt:Lcom/brewcrewfoo/performance/util/Voltage;
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-static {}, Lcom/brewcrewfoo/performance/util/Helpers;->getNumOfCpus()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 107
    new-instance v5, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct {v5}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    iget-object v5, v5, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "busybox echo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/brewcrewfoo/performance/util/Helpers;->getVoltagePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cpu0"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cpu"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :cond_1
    invoke-static {}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->access$000()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->getVolts(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v4

    .line 114
    .local v4, volts:Ljava/util/List;,"Ljava/util/List<Lcom/brewcrewfoo/performance/util/Voltage;>;"
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$2;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    #getter for: Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mVoltages:Ljava/util/List;
    invoke-static {v5}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->access$100(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 115
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$2;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    #getter for: Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mVoltages:Ljava/util/List;
    invoke-static {v5}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->access$100(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$2;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    #getter for: Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mAdapter:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;
    invoke-static {v5}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->access$200(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;)Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;->notifyDataSetChanged()V

    .line 117
    return-void
.end method
