.class public Lnet/margaritov/preference/colorpicker/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

.field private mHex:Landroid/widget/EditText;

.field private mIcsColor:Landroid/widget/Button;

.field private mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

.field private mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

.field private mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

.field private mSetButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "initialColor"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0, p2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->init(I)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Lnet/margaritov/preference/colorpicker/ColorPickerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    return-object v0
.end method

.method private init(I)V
    .locals 2
    .parameter "color"

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 57
    invoke-virtual {p0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->requestWindowFeature(I)Z

    .line 58
    invoke-direct {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setUp(I)V

    .line 60
    return-void
.end method

.method private setUp(I)V
    .locals 6
    .parameter "color"

    .prologue
    const/4 v5, 0x0

    .line 64
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 67
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 69
    .local v1, layout:Landroid/view/View;
    invoke-virtual {p0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    .line 71
    const v2, 0x7f08005c

    invoke-virtual {p0, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setTitle(I)V

    .line 73
    const v2, 0x7f0b0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    .line 75
    const v2, 0x7f0b0014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 77
    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 79
    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    .line 80
    const v2, 0x7f0b0017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mSetButton:Landroid/widget/Button;

    .line 81
    const v2, 0x7f0b0018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mIcsColor:Landroid/widget/Button;

    .line 83
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    invoke-virtual {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 87
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    invoke-virtual {v2, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;)V

    .line 90
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 91
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    .line 92
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    invoke-static {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mSetButton:Landroid/widget/Button;

    new-instance v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$1;

    invoke-direct {v3, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$1;-><init>(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mIcsColor:Landroid/widget/Button;

    new-instance v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$2;

    invoke-direct {v3, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$2;-><init>(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0015

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    .line 160
    :cond_0
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->dismiss()V

    .line 161
    return-void
.end method

.method public onColorChanged(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 123
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 125
    :try_start_0
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    invoke-static {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 136
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 137
    return-void
.end method

.method public setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 146
    iput-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    .line 147
    return-void
.end method
