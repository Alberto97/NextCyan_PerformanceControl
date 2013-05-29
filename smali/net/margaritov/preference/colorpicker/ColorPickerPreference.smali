.class public Lnet/margaritov/preference/colorpicker/ColorPickerPreference;
.super Landroid/preference/Preference;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;


# instance fields
.field private mAlphaSliderEnabled:Z

.field mDefaultValue:I

.field private mDensity:F

.field private mEditText:Landroid/widget/EditText;

.field private mValue:I

.field mView:Landroid/view/View;

.field widgetFrameView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/high16 v0, -0x100

    .line 52
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 42
    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDefaultValue:I

    .line 43
    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v0, -0x100

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDefaultValue:I

    .line 43
    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 58
    invoke-direct {p0, p1, p2}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v0, -0x100

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDefaultValue:I

    .line 43
    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 64
    invoke-direct {p0, p1, p2}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public static convertToARGB(I)Ljava/lang/String;
    .locals 7
    .parameter "color"

    .prologue
    const/4 v6, 0x1

    .line 215
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, alpha:Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, red:Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, green:Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, blue:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static convertToColorInt(Ljava/lang/String;)I
    .locals 11
    .parameter "argb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x6

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/16 v6, 0x10

    .line 249
    const-string v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    const-string v4, "#"

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 253
    :cond_0
    const/4 v0, -0x1

    .local v0, alpha:I
    const/4 v3, -0x1

    .local v3, red:I
    const/4 v2, -0x1

    .local v2, green:I
    const/4 v1, -0x1

    .line 255
    .local v1, blue:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 256
    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 257
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 258
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 259
    const/16 v4, 0x8

    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 267
    :cond_1
    :goto_0
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4

    .line 260
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 261
    const/16 v0, 0xff

    .line 262
    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 263
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 264
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 138
    iget v8, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/high16 v9, 0x41f8

    mul-float/2addr v8, v9

    float-to-int v3, v8

    .line 139
    .local v3, d:I
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getValue()I

    move-result v2

    .line 140
    .local v2, color:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 142
    .local v7, w:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 143
    .local v4, h:I
    move v1, v2

    .line 144
    .local v1, c:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v7, :cond_4

    .line 145
    move v6, v5

    .local v6, j:I
    :goto_1
    if-ge v6, v4, :cond_3

    .line 146
    if-le v5, v10, :cond_0

    if-le v6, v10, :cond_0

    add-int/lit8 v8, v7, -0x2

    if-ge v5, v8, :cond_0

    add-int/lit8 v8, v4, -0x2

    if-lt v6, v8, :cond_2

    :cond_0
    const v1, -0x777778

    .line 148
    :goto_2
    invoke-virtual {v0, v5, v6, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 149
    if-eq v5, v6, :cond_1

    .line 150
    invoke-virtual {v0, v6, v5, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 145
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 146
    goto :goto_2

    .line 144
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 155
    .end local v6           #j:I
    :cond_4
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    .line 73
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    .line 74
    invoke-virtual {p0, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 75
    if-eqz p2, :cond_1

    .line 76
    const-string v3, "http://schemas.android.com/apk/res/android"

    const-string v4, "defaultValue"

    invoke-interface {p2, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, defaultValue:Ljava/lang/String;
    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    :try_start_0
    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDefaultValue:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    const/4 v3, 0x0

    const-string v4, "alphaSlider"

    invoke-interface {p2, v3, v4, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 97
    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_1
    iget v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDefaultValue:I

    iput v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    .line 98
    return-void

    .line 81
    .restart local v0       #defaultValue:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 82
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "ColorPickerPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong color: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v3, "#FF000000"

    invoke-static {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDefaultValue:I

    goto :goto_0

    .line 87
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v3, "http://schemas.android.com/apk/res/android"

    const-string v4, "defaultValue"

    invoke-interface {p2, v3, v4, v6}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 89
    .local v2, resourceId:I
    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDefaultValue:I

    goto :goto_0
.end method

.method private setPreviewColor()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 112
    iget-object v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 116
    .local v1, iView:Landroid/widget/ImageView;
    iget-object v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    const v4, 0x1020018

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 118
    .local v2, widgetFrameView:Landroid/widget/LinearLayout;
    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/high16 v6, 0x4100

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 126
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 127
    .local v0, count:I
    if-lez v0, :cond_2

    .line 128
    invoke-virtual {v2, v7, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 130
    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 132
    new-instance v3, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    const/high16 v4, 0x40a0

    iget v5, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v4}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public getValue()I
    .locals 2

    .prologue
    .line 160
    :try_start_0
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDefaultValue:I

    invoke-virtual {p0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getPersistedInt(I)I

    move-result v1

    iput v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    :goto_0
    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    return v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Ljava/lang/ClassCastException;
    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDefaultValue:I

    iput v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 102
    iput-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    .line 103
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 105
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->widgetFrameView:Landroid/widget/LinearLayout;

    .line 108
    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setPreviewColor()V

    .line 109
    return-void
.end method

.method public onColorChanged(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 172
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->persistInt(I)Z

    .line 175
    :cond_0
    iput p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    .line 176
    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setPreviewColor()V

    .line 178
    :try_start_0
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    :goto_0
    :try_start_1
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    :goto_1
    return-void

    .line 183
    :catch_0
    move-exception v0

    goto :goto_1

    .line 179
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 188
    new-instance v0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    .line 190
    .local v0, picker:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;
    invoke-virtual {v0, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    .line 191
    iget-boolean v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    if-eqz v1, :cond_0

    .line 192
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setAlphaSliderVisible(Z)V

    .line 194
    :cond_0
    invoke-virtual {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->show()V

    .line 196
    const/4 v1, 0x0

    return v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 69
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getValue()I

    move-result v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->onColorChanged(I)V

    .line 70
    return-void

    .line 69
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
