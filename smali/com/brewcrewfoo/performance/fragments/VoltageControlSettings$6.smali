.class Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$6;
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


# direct methods
.method constructor <init>(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$6;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    iput p2, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$6;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$6;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    iget v1, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$6;->val$id:I

    invoke-virtual {v0, v1}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->removeDialog(I)V

    .line 301
    return-void
.end method
