.class Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$7;
.super Ljava/lang/Object;
.source "VoltageControlSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

.field final synthetic val$id:I

.field final synthetic val$voltageEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;ILandroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$7;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    iput p2, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$7;->val$id:I

    iput-object p3, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$7;->val$voltageEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 285
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$7;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    iget v3, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$7;->val$id:I

    invoke-virtual {v2, v3}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->removeDialog(I)V

    .line 286
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$7;->val$voltageEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, value:Ljava/lang/String;
    invoke-static {}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->access$000()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 290
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$7;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    #getter for: Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mVoltage:Lcom/brewcrewfoo/performance/util/Voltage;
    invoke-static {v2}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->access$300(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;)Lcom/brewcrewfoo/performance/util/Voltage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/brewcrewfoo/performance/util/Voltage;->getFreq()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 291
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 292
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$7;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    #getter for: Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mVoltage:Lcom/brewcrewfoo/performance/util/Voltage;
    invoke-static {v2}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->access$300(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;)Lcom/brewcrewfoo/performance/util/Voltage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/brewcrewfoo/performance/util/Voltage;->setSavedMV(Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$7;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    #getter for: Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mAdapter:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;
    invoke-static {v2}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->access$200(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;)Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;->notifyDataSetChanged()V

    .line 294
    return-void
.end method
