.class public final Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;
.super Ljava/lang/Object;
.source "ImageSizeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/utils/ImageSizeUtils$1;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static computeImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I
    .registers 13
    .param p0, "srcSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .param p3, "powerOf2Scale"    # Z

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v3

    .line 113
    .local v3, "srcWidth":I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v2

    .line 114
    .local v2, "srcHeight":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v5

    .line 115
    .local v5, "targetWidth":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v4

    .line 117
    .local v4, "targetHeight":I
    const/4 v1, 0x1

    .line 119
    .local v1, "scale":I
    div-int v6, v3, v5

    .line 120
    .local v6, "widthScale":I
    div-int v0, v2, v4

    .line 122
    .local v0, "heightScale":I
    sget-object v7, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils$1;->$SwitchMap$com$nostra13$universalimageloader$core$assist$ViewScaleType:[I

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_52

    .line 147
    :cond_20
    :goto_20
    const/4 v7, 0x1

    if-ge v1, v7, :cond_24

    .line 148
    const/4 v1, 0x1

    .line 151
    :cond_24
    return v1

    .line 124
    :pswitch_25
    if-eqz p3, :cond_36

    .line 125
    :goto_27
    div-int/lit8 v7, v3, 0x2

    if-ge v7, v5, :cond_2f

    div-int/lit8 v7, v2, 0x2

    if-lt v7, v4, :cond_20

    .line 126
    :cond_2f
    div-int/lit8 v3, v3, 0x2

    .line 127
    div-int/lit8 v2, v2, 0x2

    .line 128
    mul-int/lit8 v1, v1, 0x2

    goto :goto_27

    .line 131
    :cond_36
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 133
    goto :goto_20

    .line 135
    :pswitch_3b
    if-eqz p3, :cond_4c

    .line 136
    :goto_3d
    div-int/lit8 v7, v3, 0x2

    if-lt v7, v5, :cond_20

    div-int/lit8 v7, v2, 0x2

    if-lt v7, v4, :cond_20

    .line 137
    div-int/lit8 v3, v3, 0x2

    .line 138
    div-int/lit8 v2, v2, 0x2

    .line 139
    mul-int/lit8 v1, v1, 0x2

    goto :goto_3d

    .line 142
    :cond_4c
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_20

    .line 122
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_25
        :pswitch_3b
    .end packed-switch
.end method

.method public static computeImageScale(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F
    .registers 15
    .param p0, "srcSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .param p3, "stretch"    # Z

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v5

    .line 178
    .local v5, "srcWidth":I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v4

    .line 179
    .local v4, "srcHeight":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v7

    .line 180
    .local v7, "targetWidth":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v6

    .line 182
    .local v6, "targetHeight":I
    int-to-float v9, v5

    int-to-float v10, v7

    div-float v8, v9, v10

    .line 183
    .local v8, "widthScale":F
    int-to-float v9, v4

    int-to-float v10, v6

    div-float v2, v9, v10

    .line 187
    .local v2, "heightScale":F
    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p2, v9, :cond_20

    cmpl-float v9, v8, v2

    if-gez v9, :cond_28

    :cond_20
    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p2, v9, :cond_3f

    cmpg-float v9, v8, v2

    if-gez v9, :cond_3f

    .line 188
    :cond_28
    move v1, v7

    .line 189
    .local v1, "destWidth":I
    int-to-float v9, v4

    div-float/2addr v9, v8

    float-to-int v0, v9

    .line 195
    .local v0, "destHeight":I
    :goto_2c
    const/high16 v3, 0x3f800000    # 1.0f

    .line 196
    .local v3, "scale":F
    if-nez p3, :cond_34

    if-ge v1, v5, :cond_34

    if-lt v0, v4, :cond_3a

    :cond_34
    if-eqz p3, :cond_3e

    if-eq v1, v5, :cond_3e

    if-eq v0, v4, :cond_3e

    .line 197
    :cond_3a
    int-to-float v9, v1

    int-to-float v10, v5

    div-float v3, v9, v10

    .line 200
    :cond_3e
    return v3

    .line 191
    .end local v0    # "destHeight":I
    .end local v1    # "destWidth":I
    .end local v3    # "scale":F
    :cond_3f
    int-to-float v9, v5

    div-float/2addr v9, v2

    float-to-int v1, v9

    .line 192
    .restart local v1    # "destWidth":I
    move v0, v6

    .restart local v0    # "destHeight":I
    goto :goto_2c
.end method

.method public static defineTargetSizeForView(Landroid/widget/ImageView;II)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .registers 9
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "maxImageWidth"    # I
    .param p2, "maxImageHeight"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x2

    .line 51
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 53
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 54
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_4f

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v5, :cond_4f

    move v3, v1

    .line 55
    .local v3, "width":I
    :goto_19
    if-gtz v3, :cond_1f

    if-eqz v2, :cond_1f

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    :cond_1f
    if-gtz v3, :cond_27

    const-string v4, "mMaxWidth"

    invoke-static {p0, v4}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    .line 57
    :cond_27
    if-gtz v3, :cond_2a

    move v3, p1

    .line 58
    :cond_2a
    if-gtz v3, :cond_2e

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 60
    :cond_2e
    if-eqz v2, :cond_54

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v5, :cond_54

    .line 61
    .local v1, "height":I
    :goto_34
    if-gtz v1, :cond_3a

    if-eqz v2, :cond_3a

    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    :cond_3a
    if-gtz v1, :cond_42

    const-string v4, "mMaxHeight"

    invoke-static {p0, v4}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 63
    :cond_42
    if-gtz v1, :cond_45

    move v1, p2

    .line 64
    :cond_45
    if-gtz v1, :cond_49

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 66
    :cond_49
    new-instance v4, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v4, v3, v1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    return-object v4

    .line 54
    .end local v1    # "height":I
    .end local v3    # "width":I
    :cond_4f
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    goto :goto_19

    .line 60
    .restart local v3    # "width":I
    :cond_54
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    goto :goto_34
.end method

.method private static getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 7
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v3, 0x0

    .line 72
    .local v3, "value":I
    :try_start_1
    const-class v4, Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 73
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_1e

    move-result v2

    .line 75
    .local v2, "fieldValue":I
    if-lez v2, :cond_1d

    const v4, 0x7fffffff

    if-ge v2, v4, :cond_1d

    .line 76
    move v3, v2

    .line 81
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fieldValue":I
    :cond_1d
    :goto_1d
    return v3

    .line 78
    :catch_1e
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_1d
.end method
