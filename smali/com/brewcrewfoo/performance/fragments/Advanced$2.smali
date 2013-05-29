.class Lcom/brewcrewfoo/performance/fragments/Advanced$2;
.super Ljava/lang/Object;
.source "Advanced.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brewcrewfoo/performance/fragments/Advanced;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brewcrewfoo/performance/fragments/Advanced;


# direct methods
.method constructor <init>(Lcom/brewcrewfoo/performance/fragments/Advanced;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$2;->this$0:Lcom/brewcrewfoo/performance/fragments/Advanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$2;->this$0:Lcom/brewcrewfoo/performance/fragments/Advanced;

    #getter for: Lcom/brewcrewfoo/performance/fragments/Advanced;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->access$000(Lcom/brewcrewfoo/performance/fragments/Advanced;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_fast_charge"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 172
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$2;->this$0:Lcom/brewcrewfoo/performance/fragments/Advanced;

    #getter for: Lcom/brewcrewfoo/performance/fragments/Advanced;->mFastCharge:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->access$100(Lcom/brewcrewfoo/performance/fragments/Advanced;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 173
    return-void
.end method
