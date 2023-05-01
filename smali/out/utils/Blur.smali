.class public Lutils/Blur;
.super Ljava/lang/Object;
.source "Blur.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sentBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 18
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lutils/Blur;->apply(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static apply(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 52
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 23
    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 24
    :cond_8
    const/4 v3, 0x0

    .line 270
    :goto_9
    return-object v3

    .line 25
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v42, v5, 0x2

    .line 26
    .local v42, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v22, v5, 0x2

    .line 27
    .local v22, "height":I
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v42

    move/from16 v2, v22

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 30
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-le v5, v7, :cond_64

    .line 31
    invoke-static/range {p0 .. p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v33

    .line 32
    .local v33, "rs":Landroid/renderscript/RenderScript;
    sget-object v5, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v7, 0x1

    move-object/from16 v0, v33

    invoke-static {v0, v3, v5, v7}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v25

    .line 36
    .local v25, "input":Landroid/renderscript/Allocation;
    invoke-virtual/range {v25 .. v25}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    .line 35
    move-object/from16 v0, v33

    invoke-static {v0, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v26

    .line 38
    .local v26, "output":Landroid/renderscript/Allocation;
    invoke-static/range {v33 .. v33}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    .line 37
    move-object/from16 v0, v33

    invoke-static {v0, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v35

    .line 39
    .local v35, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    move/from16 v0, p2

    int-to-float v5, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 40
    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 41
    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 42
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_9

    .line 75
    .end local v25    # "input":Landroid/renderscript/Allocation;
    .end local v26    # "output":Landroid/renderscript/Allocation;
    .end local v33    # "rs":Landroid/renderscript/RenderScript;
    .end local v35    # "script":Landroid/renderscript/ScriptIntrinsicBlur;
    :cond_64
    const/4 v5, 0x1

    move/from16 v0, p2

    if-ge v0, v5, :cond_6b

    .line 76
    const/4 v3, 0x0

    goto :goto_9

    .line 79
    :cond_6b
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 80
    .local v6, "w":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 82
    .local v10, "h":I
    mul-int v5, v6, v10

    new-array v4, v5, [I

    .line 83
    .local v4, "pix":[I
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 85
    add-int/lit8 v43, v6, -0x1

    .line 86
    .local v43, "wm":I
    add-int/lit8 v23, v10, -0x1

    .line 87
    .local v23, "hm":I
    mul-int v41, v6, v10

    .line 88
    .local v41, "wh":I
    add-int v5, p2, p2

    add-int/lit8 v15, v5, 0x1

    .line 90
    .local v15, "div":I
    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v28, v0

    .line 91
    .local v28, "r":[I
    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 92
    .local v18, "g":[I
    move/from16 v0, v41

    new-array v11, v0, [I

    .line 94
    .local v11, "b":[I
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v40, v0

    .line 96
    .local v40, "vmin":[I
    add-int/lit8 v5, v15, 0x1

    shr-int/lit8 v16, v5, 0x1

    .line 97
    .local v16, "divsum":I
    mul-int v16, v16, v16

    .line 98
    move/from16 v0, v16

    mul-int/lit16 v5, v0, 0x100

    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 99
    .local v17, "dv":[I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_b0
    move/from16 v0, v16

    mul-int/lit16 v5, v0, 0x100

    move/from16 v0, v24

    if-ge v0, v5, :cond_bf

    .line 100
    div-int v5, v24, v16

    aput v5, v17, v24

    .line 99
    add-int/lit8 v24, v24, 0x1

    goto :goto_b0

    .line 103
    :cond_bf
    const/16 v46, 0x0

    .local v46, "yi":I
    move/from16 v48, v46

    .line 105
    .local v48, "yw":I
    const/4 v5, 0x3

    filled-new-array {v15, v5}, [I

    move-result-object v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [[I

    .line 110
    .local v37, "stack":[[I
    add-int/lit8 v29, p2, 0x1

    .line 114
    .local v29, "r1":I
    const/16 v45, 0x0

    .local v45, "y":I
    :goto_d4
    move/from16 v0, v45

    if-ge v0, v10, :cond_1fd

    .line 115
    const/4 v14, 0x0

    .local v14, "bsum":I
    move/from16 v21, v14

    .local v21, "gsum":I
    move/from16 v34, v14

    .local v34, "rsum":I
    move v13, v14

    .local v13, "boutsum":I
    move/from16 v20, v14

    .local v20, "goutsum":I
    move/from16 v32, v14

    .local v32, "routsum":I
    move v12, v14

    .local v12, "binsum":I
    move/from16 v19, v14

    .local v19, "ginsum":I
    move/from16 v31, v14

    .line 116
    .local v31, "rinsum":I
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v24, v0

    :goto_ec
    move/from16 v0, v24

    move/from16 v1, p2

    if-gt v0, v1, :cond_15d

    .line 117
    const/4 v5, 0x0

    move/from16 v0, v24

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v0, v43

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v5, v5, v46

    aget v27, v4, v5

    .line 118
    .local v27, "p":I
    add-int v5, v24, p2

    aget-object v36, v37, v5

    .line 119
    .local v36, "sir":[I
    const/4 v5, 0x0

    const/high16 v7, 0xff0000

    and-int v7, v7, v27

    shr-int/lit8 v7, v7, 0x10

    aput v7, v36, v5

    .line 120
    const/4 v5, 0x1

    const v7, 0xff00

    and-int v7, v7, v27

    shr-int/lit8 v7, v7, 0x8

    aput v7, v36, v5

    .line 121
    const/4 v5, 0x2

    move/from16 v0, v27

    and-int/lit16 v7, v0, 0xff

    aput v7, v36, v5

    .line 122
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v30, v29, v5

    .line 123
    .local v30, "rbs":I
    const/4 v5, 0x0

    aget v5, v36, v5

    mul-int v5, v5, v30

    add-int v34, v34, v5

    .line 124
    const/4 v5, 0x1

    aget v5, v36, v5

    mul-int v5, v5, v30

    add-int v21, v21, v5

    .line 125
    const/4 v5, 0x2

    aget v5, v36, v5

    mul-int v5, v5, v30

    add-int/2addr v14, v5

    .line 126
    if-lez v24, :cond_14e

    .line 127
    const/4 v5, 0x0

    aget v5, v36, v5

    add-int v31, v31, v5

    .line 128
    const/4 v5, 0x1

    aget v5, v36, v5

    add-int v19, v19, v5

    .line 129
    const/4 v5, 0x2

    aget v5, v36, v5

    add-int/2addr v12, v5

    .line 116
    :goto_14b
    add-int/lit8 v24, v24, 0x1

    goto :goto_ec

    .line 131
    :cond_14e
    const/4 v5, 0x0

    aget v5, v36, v5

    add-int v32, v32, v5

    .line 132
    const/4 v5, 0x1

    aget v5, v36, v5

    add-int v20, v20, v5

    .line 133
    const/4 v5, 0x2

    aget v5, v36, v5

    add-int/2addr v13, v5

    goto :goto_14b

    .line 136
    .end local v27    # "p":I
    .end local v30    # "rbs":I
    .end local v36    # "sir":[I
    :cond_15d
    move/from16 v38, p2

    .line 138
    .local v38, "stackpointer":I
    const/16 v44, 0x0

    .local v44, "x":I
    :goto_161
    move/from16 v0, v44

    if-ge v0, v6, :cond_1f7

    .line 140
    aget v5, v17, v34

    aput v5, v28, v46

    .line 141
    aget v5, v17, v21

    aput v5, v18, v46

    .line 142
    aget v5, v17, v14

    aput v5, v11, v46

    .line 144
    sub-int v34, v34, v32

    .line 145
    sub-int v21, v21, v20

    .line 146
    sub-int/2addr v14, v13

    .line 148
    sub-int v5, v38, p2

    add-int v39, v5, v15

    .line 149
    .local v39, "stackstart":I
    rem-int v5, v39, v15

    aget-object v36, v37, v5

    .line 151
    .restart local v36    # "sir":[I
    const/4 v5, 0x0

    aget v5, v36, v5

    sub-int v32, v32, v5

    .line 152
    const/4 v5, 0x1

    aget v5, v36, v5

    sub-int v20, v20, v5

    .line 153
    const/4 v5, 0x2

    aget v5, v36, v5

    sub-int/2addr v13, v5

    .line 155
    if-nez v45, :cond_19a

    .line 156
    add-int v5, v44, p2

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v43

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v40, v44

    .line 158
    :cond_19a
    aget v5, v40, v44

    add-int v5, v5, v48

    aget v27, v4, v5

    .line 160
    .restart local v27    # "p":I
    const/4 v5, 0x0

    const/high16 v7, 0xff0000

    and-int v7, v7, v27

    shr-int/lit8 v7, v7, 0x10

    aput v7, v36, v5

    .line 161
    const/4 v5, 0x1

    const v7, 0xff00

    and-int v7, v7, v27

    shr-int/lit8 v7, v7, 0x8

    aput v7, v36, v5

    .line 162
    const/4 v5, 0x2

    move/from16 v0, v27

    and-int/lit16 v7, v0, 0xff

    aput v7, v36, v5

    .line 164
    const/4 v5, 0x0

    aget v5, v36, v5

    add-int v31, v31, v5

    .line 165
    const/4 v5, 0x1

    aget v5, v36, v5

    add-int v19, v19, v5

    .line 166
    const/4 v5, 0x2

    aget v5, v36, v5

    add-int/2addr v12, v5

    .line 168
    add-int v34, v34, v31

    .line 169
    add-int v21, v21, v19

    .line 170
    add-int/2addr v14, v12

    .line 172
    add-int/lit8 v5, v38, 0x1

    rem-int v38, v5, v15

    .line 173
    rem-int v5, v38, v15

    aget-object v36, v37, v5

    .line 175
    const/4 v5, 0x0

    aget v5, v36, v5

    add-int v32, v32, v5

    .line 176
    const/4 v5, 0x1

    aget v5, v36, v5

    add-int v20, v20, v5

    .line 177
    const/4 v5, 0x2

    aget v5, v36, v5

    add-int/2addr v13, v5

    .line 179
    const/4 v5, 0x0

    aget v5, v36, v5

    sub-int v31, v31, v5

    .line 180
    const/4 v5, 0x1

    aget v5, v36, v5

    sub-int v19, v19, v5

    .line 181
    const/4 v5, 0x2

    aget v5, v36, v5

    sub-int/2addr v12, v5

    .line 183
    add-int/lit8 v46, v46, 0x1

    .line 138
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_161

    .line 185
    .end local v27    # "p":I
    .end local v36    # "sir":[I
    .end local v39    # "stackstart":I
    :cond_1f7
    add-int v48, v48, v6

    .line 114
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_d4

    .line 187
    .end local v12    # "binsum":I
    .end local v13    # "boutsum":I
    .end local v14    # "bsum":I
    .end local v19    # "ginsum":I
    .end local v20    # "goutsum":I
    .end local v21    # "gsum":I
    .end local v31    # "rinsum":I
    .end local v32    # "routsum":I
    .end local v34    # "rsum":I
    .end local v38    # "stackpointer":I
    .end local v44    # "x":I
    :cond_1fd
    const/16 v44, 0x0

    .restart local v44    # "x":I
    :goto_1ff
    move/from16 v0, v44

    if-ge v0, v6, :cond_317

    .line 188
    const/4 v14, 0x0

    .restart local v14    # "bsum":I
    move/from16 v21, v14

    .restart local v21    # "gsum":I
    move/from16 v34, v14

    .restart local v34    # "rsum":I
    move v13, v14

    .restart local v13    # "boutsum":I
    move/from16 v20, v14

    .restart local v20    # "goutsum":I
    move/from16 v32, v14

    .restart local v32    # "routsum":I
    move v12, v14

    .restart local v12    # "binsum":I
    move/from16 v19, v14

    .restart local v19    # "ginsum":I
    move/from16 v31, v14

    .line 189
    .restart local v31    # "rinsum":I
    move/from16 v0, p2

    neg-int v5, v0

    mul-int v47, v5, v6

    .line 190
    .local v47, "yp":I
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v24, v0

    :goto_21c
    move/from16 v0, v24

    move/from16 v1, p2

    if-gt v0, v1, :cond_27f

    .line 191
    const/4 v5, 0x0

    move/from16 v0, v47

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int v46, v5, v44

    .line 193
    add-int v5, v24, p2

    aget-object v36, v37, v5

    .line 195
    .restart local v36    # "sir":[I
    const/4 v5, 0x0

    aget v7, v28, v46

    aput v7, v36, v5

    .line 196
    const/4 v5, 0x1

    aget v7, v18, v46

    aput v7, v36, v5

    .line 197
    const/4 v5, 0x2

    aget v7, v11, v46

    aput v7, v36, v5

    .line 199
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v30, v29, v5

    .line 201
    .restart local v30    # "rbs":I
    aget v5, v28, v46

    mul-int v5, v5, v30

    add-int v34, v34, v5

    .line 202
    aget v5, v18, v46

    mul-int v5, v5, v30

    add-int v21, v21, v5

    .line 203
    aget v5, v11, v46

    mul-int v5, v5, v30

    add-int/2addr v14, v5

    .line 205
    if-lez v24, :cond_270

    .line 206
    const/4 v5, 0x0

    aget v5, v36, v5

    add-int v31, v31, v5

    .line 207
    const/4 v5, 0x1

    aget v5, v36, v5

    add-int v19, v19, v5

    .line 208
    const/4 v5, 0x2

    aget v5, v36, v5

    add-int/2addr v12, v5

    .line 215
    :goto_265
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_26d

    .line 216
    add-int v47, v47, v6

    .line 190
    :cond_26d
    add-int/lit8 v24, v24, 0x1

    goto :goto_21c

    .line 210
    :cond_270
    const/4 v5, 0x0

    aget v5, v36, v5

    add-int v32, v32, v5

    .line 211
    const/4 v5, 0x1

    aget v5, v36, v5

    add-int v20, v20, v5

    .line 212
    const/4 v5, 0x2

    aget v5, v36, v5

    add-int/2addr v13, v5

    goto :goto_265

    .line 219
    .end local v30    # "rbs":I
    .end local v36    # "sir":[I
    :cond_27f
    move/from16 v46, v44

    .line 220
    move/from16 v38, p2

    .line 221
    .restart local v38    # "stackpointer":I
    const/16 v45, 0x0

    :goto_285
    move/from16 v0, v45

    if-ge v0, v10, :cond_313

    .line 223
    const/high16 v5, -0x1000000

    aget v7, v4, v46

    and-int/2addr v5, v7

    aget v7, v17, v34

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    aget v7, v17, v21

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    aget v7, v17, v14

    or-int/2addr v5, v7

    aput v5, v4, v46

    .line 226
    sub-int v34, v34, v32

    .line 227
    sub-int v21, v21, v20

    .line 228
    sub-int/2addr v14, v13

    .line 230
    sub-int v5, v38, p2

    add-int v39, v5, v15

    .line 231
    .restart local v39    # "stackstart":I
    rem-int v5, v39, v15

    aget-object v36, v37, v5

    .line 233
    .restart local v36    # "sir":[I
    const/4 v5, 0x0

    aget v5, v36, v5

    sub-int v32, v32, v5

    .line 234
    const/4 v5, 0x1

    aget v5, v36, v5

    sub-int v20, v20, v5

    .line 235
    const/4 v5, 0x2

    aget v5, v36, v5

    sub-int/2addr v13, v5

    .line 237
    if-nez v44, :cond_2c5

    .line 238
    add-int v5, v45, v29

    move/from16 v0, v23

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/2addr v5, v6

    aput v5, v40, v45

    .line 240
    :cond_2c5
    aget v5, v40, v45

    add-int v27, v44, v5

    .line 242
    .restart local v27    # "p":I
    const/4 v5, 0x0

    aget v7, v28, v27

    aput v7, v36, v5

    .line 243
    const/4 v5, 0x1

    aget v7, v18, v27

    aput v7, v36, v5

    .line 244
    const/4 v5, 0x2

    aget v7, v11, v27

    aput v7, v36, v5

    .line 246
    const/4 v5, 0x0

    aget v5, v36, v5

    add-int v31, v31, v5

    .line 247
    const/4 v5, 0x1

    aget v5, v36, v5

    add-int v19, v19, v5

    .line 248
    const/4 v5, 0x2

    aget v5, v36, v5

    add-int/2addr v12, v5

    .line 250
    add-int v34, v34, v31

    .line 251
    add-int v21, v21, v19

    .line 252
    add-int/2addr v14, v12

    .line 254
    add-int/lit8 v5, v38, 0x1

    rem-int v38, v5, v15

    .line 255
    aget-object v36, v37, v38

    .line 257
    const/4 v5, 0x0

    aget v5, v36, v5

    add-int v32, v32, v5

    .line 258
    const/4 v5, 0x1

    aget v5, v36, v5

    add-int v20, v20, v5

    .line 259
    const/4 v5, 0x2

    aget v5, v36, v5

    add-int/2addr v13, v5

    .line 261
    const/4 v5, 0x0

    aget v5, v36, v5

    sub-int v31, v31, v5

    .line 262
    const/4 v5, 0x1

    aget v5, v36, v5

    sub-int v19, v19, v5

    .line 263
    const/4 v5, 0x2

    aget v5, v36, v5

    sub-int/2addr v12, v5

    .line 265
    add-int v46, v46, v6

    .line 221
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_285

    .line 187
    .end local v27    # "p":I
    .end local v36    # "sir":[I
    .end local v39    # "stackstart":I
    :cond_313
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_1ff

    .line 269
    .end local v12    # "binsum":I
    .end local v13    # "boutsum":I
    .end local v14    # "bsum":I
    .end local v19    # "ginsum":I
    .end local v20    # "goutsum":I
    .end local v21    # "gsum":I
    .end local v31    # "rinsum":I
    .end local v32    # "routsum":I
    .end local v34    # "rsum":I
    .end local v38    # "stackpointer":I
    .end local v47    # "yp":I
    :cond_317
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_9
.end method
