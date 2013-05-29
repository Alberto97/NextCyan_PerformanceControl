.class Lcom/brewcrewfoo/performance/fragments/Advanced$4;
.super Ljava/lang/Object;
.source "Advanced.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brewcrewfoo/performance/fragments/Advanced;->openDialog(ILjava/lang/String;ILandroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brewcrewfoo/performance/fragments/Advanced;

.field final synthetic val$max:I


# direct methods
.method constructor <init>(Lcom/brewcrewfoo/performance/fragments/Advanced;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$4;->this$0:Lcom/brewcrewfoo/performance/fragments/Advanced;

    iput p2, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$4;->val$max:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "s"

    .prologue
    .line 342
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 343
    .local v6, val:I
    iget v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$4;->val$max:I

    if-le v6, v0, :cond_0

    .line 344
    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    iget v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$4;->val$max:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v6           #val:I
    :cond_0
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 337
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 332
    return-void
.end method
