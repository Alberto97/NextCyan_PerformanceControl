.class public Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$CustomDialogFragment;
.super Landroid/app/DialogFragment;
.source "VoltageControlSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomDialogFragment"
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/app/Dialog;)Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$CustomDialogFragment;
    .locals 1
    .parameter "dialog"

    .prologue
    .line 338
    new-instance v0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$CustomDialogFragment;

    invoke-direct {v0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$CustomDialogFragment;-><init>()V

    .line 339
    .local v0, frag:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$CustomDialogFragment;
    iput-object p0, v0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$CustomDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 340
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$CustomDialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method
