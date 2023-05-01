.class public Lcom/delan/app/germanybluetooth/widget/SeekArc;
.super Landroid/view/View;
.source "SeekArc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/widget/SeekArc$OnSeekArcChangeListener;
    }
.end annotation


# static fields
.field private static INVALID_PROGRESS_VALUE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAngleOffset:I

.field private mArcPaint:Landroid/graphics/Paint;

.field private mArcRadius:I

.field private mArcRect:Landroid/graphics/RectF;

.field private mArcWidth:I

.field private mClockwise:Z

.field private mEnabled:Z

.field private mMax:I

.field private mOnSeekArcChangeListener:Lcom/delan/app/germanybluetooth/widget/SeekArc$OnSeekArcChangeListener;

.field private mProgress:I

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressSweep:F

.field private mProgressWidth:I

.field private mRotation:I

.field private mRoundedEdges:Z

.field private mStartAngle:I

.field private mSweepAngle:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbXPos:I

.field private mThumbYPos:I

.field private mTouchAngle:D

.field private mTouchIgnoreRadius:F

.field private mTouchInside:Z

.field private mTranslateX:I

.field private mTranslateY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/delan/app/germanybluetooth/widget/SeekArc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, -0x1

    sput v0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->INVALID_PROGRESS_VALUE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 165
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 54
    const/16 v0, -0x5a

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mAngleOffset:I

    .line 64
    const/16 v0, 0x64

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mMax:I

    .line 69
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgress:I

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressWidth:I

    .line 79
    const/16 v0, 0x10

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcWidth:I

    .line 84
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mStartAngle:I

    .line 89
    const/16 v0, 0x168

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mSweepAngle:I

    .line 94
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRotation:I

    .line 99
    iput-boolean v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRoundedEdges:Z

    .line 104
    iput-boolean v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTouchInside:Z

    .line 109
    iput-boolean v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mClockwise:Z

    .line 115
    iput-boolean v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mEnabled:Z

    .line 118
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcRadius:I

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressSweep:F

    .line 120
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcRect:Landroid/graphics/RectF;

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/16 v0, -0x5a

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mAngleOffset:I

    .line 64
    const/16 v0, 0x64

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mMax:I

    .line 69
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgress:I

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressWidth:I

    .line 79
    const/16 v0, 0x10

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcWidth:I

    .line 84
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mStartAngle:I

    .line 89
    const/16 v0, 0x168

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mSweepAngle:I

    .line 94
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRotation:I

    .line 99
    iput-boolean v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRoundedEdges:Z

    .line 104
    iput-boolean v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTouchInside:Z

    .line 109
    iput-boolean v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mClockwise:Z

    .line 115
    iput-boolean v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mEnabled:Z

    .line 118
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcRadius:I

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressSweep:F

    .line 120
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcRect:Landroid/graphics/RectF;

    .line 171
    const v0, 0x7f01007a

    invoke-direct {p0, p1, p2, v0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/16 v0, -0x5a

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mAngleOffset:I

    .line 64
    const/16 v0, 0x64

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mMax:I

    .line 69
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgress:I

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressWidth:I

    .line 79
    const/16 v0, 0x10

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcWidth:I

    .line 84
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mStartAngle:I

    .line 89
    const/16 v0, 0x168

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mSweepAngle:I

    .line 94
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRotation:I

    .line 99
    iput-boolean v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRoundedEdges:Z

    .line 104
    iput-boolean v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTouchInside:Z

    .line 109
    iput-boolean v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mClockwise:Z

    .line 115
    iput-boolean v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mEnabled:Z

    .line 118
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcRadius:I

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressSweep:F

    .line 120
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcRect:Landroid/graphics/RectF;

    .line 176
    invoke-direct {p0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    return-void
.end method

.method private getProgressForAngle(D)I
    .registers 8
    .param p1, "angle"    # D

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->valuePerDegree()F

    move-result v1

    float-to-double v2, v1

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 404
    .local v0, "touchProgress":I
    if-gez v0, :cond_f

    sget v0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->INVALID_PROGRESS_VALUE:I

    .line 406
    :cond_f
    iget v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mMax:I

    if-le v0, v1, :cond_15

    sget v0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->INVALID_PROGRESS_VALUE:I

    .line 408
    :cond_15
    return v0
.end method

.method private getTouchDegrees(FF)D
    .registers 11
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F

    .prologue
    .line 387
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTranslateX:I

    int-to-float v4, v4

    sub-float v2, p1, v4

    .line 388
    .local v2, "x":F
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTranslateY:I

    int-to-float v4, v4

    sub-float v3, p2, v4

    .line 390
    .local v3, "y":F
    iget-boolean v4, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mClockwise:Z

    if-eqz v4, :cond_37

    .line 392
    :goto_e
    float-to-double v4, v3

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v4, v6

    iget v6, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRotation:I

    int-to-double v6, v6

    .line 393
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 392
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 394
    .local v0, "angle":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_32

    .line 395
    const-wide v4, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v4

    .line 397
    :cond_32
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mStartAngle:I

    int-to-double v4, v4

    sub-double/2addr v0, v4

    .line 398
    return-wide v0

    .line 390
    .end local v0    # "angle":D
    :cond_37
    neg-float v2, v2

    goto :goto_e
.end method

.method private ignoreTouch(FF)Z
    .registers 9
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "ignore":Z
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTranslateX:I

    int-to-float v4, v4

    sub-float v2, p1, v4

    .line 377
    .local v2, "x":F
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTranslateY:I

    int-to-float v4, v4

    sub-float v3, p2, v4

    .line 379
    .local v3, "y":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 380
    .local v1, "touchRadius":F
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTouchIgnoreRadius:F

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1d

    .line 381
    const/4 v0, 0x1

    .line 383
    :cond_1d
    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 181
    sget-object v8, Lcom/delan/app/germanybluetooth/widget/SeekArc;->TAG:Ljava/lang/String;

    const-string v9, "Initialising SeekArc"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 183
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v2, v8, Landroid/util/DisplayMetrics;->density:F

    .line 186
    .local v2, "density":F
    const v8, 0x7f0c0040

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 187
    .local v1, "arcColor":I
    const v8, 0x7f0c0020

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 190
    .local v3, "progressColor":I
    const v8, 0x7f03000d

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 192
    iget v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v2

    float-to-int v8, v8

    iput v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressWidth:I

    .line 194
    if-eqz p2, :cond_d7

    .line 196
    sget-object v8, Lcom/delan/app/germanybluetooth/R$styleable;->SeekArc:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 199
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 200
    .local v5, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_45

    .line 201
    iput-object v5, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 204
    :cond_45
    iget-object v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    div-int/lit8 v6, v8, 0x2

    .line 205
    .local v6, "thumbHalfHeight":I
    iget-object v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v7, v8, 0x2

    .line 206
    .local v7, "thumbHalfWidth":I
    iget-object v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    neg-int v9, v7

    neg-int v10, v6

    invoke-virtual {v8, v9, v10, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 209
    const/4 v8, 0x2

    iget v9, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mMax:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mMax:I

    .line 210
    const/4 v8, 0x5

    iget v9, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgress:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgress:I

    .line 211
    const/4 v8, 0x3

    iget v9, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressWidth:I

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressWidth:I

    .line 213
    const/4 v8, 0x4

    iget v9, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcWidth:I

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcWidth:I

    .line 215
    const/4 v8, 0x7

    iget v9, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mStartAngle:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mStartAngle:I

    .line 216
    const/16 v8, 0x8

    iget v9, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mSweepAngle:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mSweepAngle:I

    .line 217
    const/4 v8, 0x6

    iget v9, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRotation:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRotation:I

    .line 218
    const/16 v8, 0xb

    iget-boolean v9, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRoundedEdges:Z

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRoundedEdges:Z

    .line 220
    const/16 v8, 0xc

    iget-boolean v9, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTouchInside:Z

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTouchInside:Z

    .line 222
    const/16 v8, 0xd

    iget-boolean v9, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mClockwise:Z

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mClockwise:Z

    .line 224
    const/16 v8, 0xe

    iget-boolean v9, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mEnabled:Z

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mEnabled:Z

    .line 226
    const/16 v8, 0x9

    invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 227
    const/16 v8, 0xa

    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 230
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "thumb":Landroid/graphics/drawable/Drawable;
    .end local v6    # "thumbHalfHeight":I
    .end local v7    # "thumbHalfWidth":I
    :cond_d7
    iget v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgress:I

    iget v9, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mMax:I

    if-le v8, v9, :cond_16b

    iget v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mMax:I

    :goto_df
    iput v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgress:I

    .line 234
    iget v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgress:I

    if-gez v8, :cond_16f

    const/4 v8, 0x0

    :goto_e6
    iput v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgress:I

    .line 236
    iget v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mSweepAngle:I

    const/16 v9, 0x168

    if-le v8, v9, :cond_173

    const/16 v8, 0x168

    :goto_f0
    iput v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mSweepAngle:I

    .line 237
    iget v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mSweepAngle:I

    if-gez v8, :cond_177

    const/4 v8, 0x0

    :goto_f7
    iput v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mSweepAngle:I

    .line 239
    iget v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgress:I

    int-to-float v8, v8

    iget v9, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mMax:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v9, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mSweepAngle:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressSweep:F

    .line 241
    iget v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mStartAngle:I

    const/16 v9, 0x168

    if-le v8, v9, :cond_17b

    const/4 v8, 0x0

    :goto_10d
    iput v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mStartAngle:I

    .line 242
    iget v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mStartAngle:I

    if-gez v8, :cond_17e

    const/4 v8, 0x0

    :goto_114
    iput v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mStartAngle:I

    .line 244
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    .line 245
    iget-object v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iget-object v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 247
    iget-object v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 248
    iget-object v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcWidth:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 251
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    .line 252
    iget-object v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    iget-object v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 254
    iget-object v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 255
    iget-object v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressWidth:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 257
    iget-boolean v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRoundedEdges:Z

    if-eqz v8, :cond_16a

    .line 258
    iget-object v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 259
    iget-object v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 261
    :cond_16a
    return-void

    .line 233
    :cond_16b
    iget v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgress:I

    goto/16 :goto_df

    .line 234
    :cond_16f
    iget v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgress:I

    goto/16 :goto_e6

    .line 236
    :cond_173
    iget v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mSweepAngle:I

    goto/16 :goto_f0

    .line 237
    :cond_177
    iget v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mSweepAngle:I

    goto/16 :goto_f7

    .line 241
    :cond_17b
    iget v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mStartAngle:I

    goto :goto_10d

    .line 242
    :cond_17e
    iget v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mStartAngle:I

    goto :goto_114
.end method

.method private onProgressRefresh(IZ)V
    .registers 3
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 416
    invoke-direct {p0, p1, p2}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->updateProgress(IZ)V

    .line 417
    return-void
.end method

.method private onStartTrackingTouch()V
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mOnSeekArcChangeListener:Lcom/delan/app/germanybluetooth/widget/SeekArc$OnSeekArcChangeListener;

    if-eqz v0, :cond_9

    .line 353
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mOnSeekArcChangeListener:Lcom/delan/app/germanybluetooth/widget/SeekArc$OnSeekArcChangeListener;

    invoke-interface {v0, p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc$OnSeekArcChangeListener;->onStartTrackingTouch(Lcom/delan/app/germanybluetooth/widget/SeekArc;)V

    .line 355
    :cond_9
    return-void
.end method

.method private onStopTrackingTouch()V
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mOnSeekArcChangeListener:Lcom/delan/app/germanybluetooth/widget/SeekArc$OnSeekArcChangeListener;

    if-eqz v0, :cond_9

    .line 359
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mOnSeekArcChangeListener:Lcom/delan/app/germanybluetooth/widget/SeekArc$OnSeekArcChangeListener;

    invoke-interface {v0, p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc$OnSeekArcChangeListener;->onStopTrackingTouch(Lcom/delan/app/germanybluetooth/widget/SeekArc;)V

    .line 361
    :cond_9
    return-void
.end method

.method private updateOnTouch(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->ignoreTouch(FF)Z

    move-result v0

    .line 365
    .local v0, "ignoreTouch":Z
    if-eqz v0, :cond_10

    .line 372
    :goto_f
    return-void

    .line 368
    :cond_10
    invoke-virtual {p0, v4}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->setPressed(Z)V

    .line 369
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->getTouchDegrees(FF)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTouchAngle:D

    .line 370
    iget-wide v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTouchAngle:D

    invoke-direct {p0, v2, v3}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->getProgressForAngle(D)I

    move-result v1

    .line 371
    .local v1, "progress":I
    invoke-direct {p0, v1, v4}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->onProgressRefresh(IZ)V

    goto :goto_f
.end method

.method private updateProgress(IZ)V
    .registers 5
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 427
    sget v0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->INVALID_PROGRESS_VALUE:I

    if-ne p1, v0, :cond_5

    .line 445
    :goto_4
    return-void

    .line 431
    :cond_5
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mMax:I

    if-le p1, v0, :cond_b

    iget p1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mMax:I

    .line 432
    :cond_b
    if-gez p1, :cond_e

    const/4 p1, 0x0

    .line 433
    :cond_e
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgress:I

    .line 435
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mOnSeekArcChangeListener:Lcom/delan/app/germanybluetooth/widget/SeekArc$OnSeekArcChangeListener;

    if-eqz v0, :cond_19

    .line 436
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mOnSeekArcChangeListener:Lcom/delan/app/germanybluetooth/widget/SeekArc$OnSeekArcChangeListener;

    .line 437
    invoke-interface {v0, p0, p1, p2}, Lcom/delan/app/germanybluetooth/widget/SeekArc$OnSeekArcChangeListener;->onProgressChanged(Lcom/delan/app/germanybluetooth/widget/SeekArc;IZ)V

    .line 440
    :cond_19
    int-to-float v0, p1

    iget v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mSweepAngle:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressSweep:F

    .line 442
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->updateThumbPosition()V

    .line 444
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->invalidate()V

    goto :goto_4
.end method

.method private updateThumbPosition()V
    .registers 7

    .prologue
    .line 420
    iget v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mStartAngle:I

    int-to-float v1, v1

    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressSweep:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRotation:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 421
    .local v0, "thumbAngle":I
    iget v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcRadius:I

    int-to-double v2, v1

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mThumbXPos:I

    .line 422
    iget v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcRadius:I

    int-to-double v2, v1

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mThumbYPos:I

    .line 423
    return-void
.end method

.method private valuePerDegree()F
    .registers 3

    .prologue
    .line 412
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mMax:I

    int-to-float v0, v0

    iget v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mSweepAngle:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 343
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 344
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 345
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->getDrawableState()[I

    move-result-object v0

    .line 346
    .local v0, "state":[I
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 348
    .end local v0    # "state":[I
    :cond_18
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->invalidate()V

    .line 349
    return-void
.end method

.method public getArcColor()I
    .registers 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getArcRotation()I
    .registers 2

    .prologue
    .line 486
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRotation:I

    return v0
.end method

.method public getArcWidth()I
    .registers 2

    .prologue
    .line 477
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcWidth:I

    return v0
.end method

.method public getMax()I
    .registers 2

    .prologue
    .line 571
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mMax:I

    return v0
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 464
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgress:I

    return v0
.end method

.method public getProgressColor()I
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getProgressWidth()I
    .registers 2

    .prologue
    .line 468
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressWidth:I

    return v0
.end method

.method public getStartAngle()I
    .registers 2

    .prologue
    .line 495
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mStartAngle:I

    return v0
.end method

.method public getSweepAngle()I
    .registers 2

    .prologue
    .line 504
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mSweepAngle:I

    return v0
.end method

.method public isClockwise()Z
    .registers 2

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mClockwise:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mEnabled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 265
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mClockwise:Z

    if-nez v0, :cond_18

    .line 266
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 270
    :cond_18
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mStartAngle:I

    add-int/lit8 v0, v0, -0x5a

    iget v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRotation:I

    add-int v6, v0, v1

    .line 271
    .local v6, "arcStart":I
    iget v7, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mSweepAngle:I

    .line 272
    .local v7, "arcSweep":I
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcRect:Landroid/graphics/RectF;

    int-to-float v2, v6

    int-to-float v3, v7

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 273
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcRect:Landroid/graphics/RectF;

    int-to-float v2, v6

    iget v3, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressSweep:F

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 276
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mEnabled:Z

    if-eqz v0, :cond_4f

    .line 278
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTranslateX:I

    iget v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mThumbXPos:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTranslateY:I

    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mThumbYPos:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 279
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 281
    :cond_4f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    .line 286
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->getSuggestedMinimumHeight()I

    move-result v7

    invoke-static {v7, p2}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->getDefaultSize(II)I

    move-result v2

    .line 288
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v7, p1}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->getDefaultSize(II)I

    move-result v6

    .line 290
    .local v6, "width":I
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 295
    .local v4, "min":I
    int-to-float v7, v6

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTranslateX:I

    .line 296
    int-to-float v7, v2

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTranslateY:I

    .line 298
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->getPaddingLeft()I

    move-result v7

    sub-int v0, v4, v7

    .line 299
    .local v0, "arcDiameter":I
    div-int/lit8 v7, v0, 0x2

    iput v7, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcRadius:I

    .line 300
    div-int/lit8 v7, v2, 0x2

    div-int/lit8 v8, v0, 0x2

    sub-int/2addr v7, v8

    int-to-float v5, v7

    .line 301
    .local v5, "top":F
    div-int/lit8 v7, v6, 0x2

    div-int/lit8 v8, v0, 0x2

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 302
    .local v3, "left":F
    iget-object v7, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcRect:Landroid/graphics/RectF;

    int-to-float v8, v0

    add-float/2addr v8, v3

    int-to-float v9, v0

    add-float/2addr v9, v5

    invoke-virtual {v7, v3, v5, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 304
    iget v7, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressSweep:F

    float-to-int v7, v7

    iget v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mStartAngle:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRotation:I

    add-int/2addr v7, v8

    add-int/lit8 v1, v7, 0x5a

    .line 305
    .local v1, "arcStart":I
    iget v7, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcRadius:I

    int-to-double v8, v7

    int-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mThumbXPos:I

    .line 306
    iget v7, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcRadius:I

    int-to-double v8, v7

    int-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mThumbYPos:I

    .line 308
    iget-boolean v7, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTouchInside:Z

    invoke-virtual {p0, v7}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->setTouchInSide(Z)V

    .line 309
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 310
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 314
    iget-boolean v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mEnabled:Z

    if-eqz v2, :cond_3c

    .line 315
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_3e

    .line 338
    :goto_14
    return v0

    .line 319
    :pswitch_15
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->onStartTrackingTouch()V

    .line 320
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->updateOnTouch(Landroid/view/MotionEvent;)V

    goto :goto_14

    .line 323
    :pswitch_1c
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->updateOnTouch(Landroid/view/MotionEvent;)V

    goto :goto_14

    .line 326
    :pswitch_20
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->onStopTrackingTouch()V

    .line 327
    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->setPressed(Z)V

    .line 328
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_14

    .line 331
    :pswitch_2e
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->onStopTrackingTouch()V

    .line 332
    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->setPressed(Z)V

    .line 333
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_14

    :cond_3c
    move v0, v1

    .line 338
    goto :goto_14

    .line 317
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_20
        :pswitch_1c
        :pswitch_2e
    .end packed-switch
.end method

.method public setArcColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 566
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 567
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->invalidate()V

    .line 568
    return-void
.end method

.method public setArcRotation(I)V
    .registers 2
    .param p1, "mRotation"    # I

    .prologue
    .line 490
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRotation:I

    .line 491
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->updateThumbPosition()V

    .line 492
    return-void
.end method

.method public setArcWidth(I)V
    .registers 4
    .param p1, "mArcWidth"    # I

    .prologue
    .line 481
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcWidth:I

    .line 482
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 483
    return-void
.end method

.method public setClockwise(Z)V
    .registers 2
    .param p1, "isClockwise"    # Z

    .prologue
    .line 537
    iput-boolean p1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mClockwise:Z

    .line 538
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 549
    iput-boolean p1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mEnabled:Z

    .line 550
    return-void
.end method

.method public setMax(I)V
    .registers 2
    .param p1, "mMax"    # I

    .prologue
    .line 575
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mMax:I

    .line 576
    return-void
.end method

.method public setOnSeekArcChangeListener(Lcom/delan/app/germanybluetooth/widget/SeekArc$OnSeekArcChangeListener;)V
    .registers 2
    .param p1, "l"    # Lcom/delan/app/germanybluetooth/widget/SeekArc$OnSeekArcChangeListener;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mOnSeekArcChangeListener:Lcom/delan/app/germanybluetooth/widget/SeekArc$OnSeekArcChangeListener;

    .line 457
    return-void
.end method

.method public setProgress(I)V
    .registers 3
    .param p1, "progress"    # I

    .prologue
    .line 460
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->updateProgress(IZ)V

    .line 461
    return-void
.end method

.method public setProgressColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 557
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 558
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->invalidate()V

    .line 559
    return-void
.end method

.method public setProgressWidth(I)V
    .registers 4
    .param p1, "mProgressWidth"    # I

    .prologue
    .line 472
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressWidth:I

    .line 473
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 474
    return-void
.end method

.method public setRoundedEdges(Z)V
    .registers 4
    .param p1, "isEnabled"    # Z

    .prologue
    .line 513
    iput-boolean p1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRoundedEdges:Z

    .line 514
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mRoundedEdges:Z

    if-eqz v0, :cond_15

    .line 515
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 516
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 521
    :goto_14
    return-void

    .line 518
    :cond_15
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 519
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_14
.end method

.method public setStartAngle(I)V
    .registers 2
    .param p1, "mStartAngle"    # I

    .prologue
    .line 499
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mStartAngle:I

    .line 500
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->updateThumbPosition()V

    .line 501
    return-void
.end method

.method public setSweepAngle(I)V
    .registers 2
    .param p1, "mSweepAngle"    # I

    .prologue
    .line 508
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mSweepAngle:I

    .line 509
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->updateThumbPosition()V

    .line 510
    return-void
.end method

.method public setTouchInSide(Z)V
    .registers 6
    .param p1, "isEnabled"    # Z

    .prologue
    .line 524
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 525
    .local v1, "thumbHalfheight":I
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 526
    .local v0, "thumbHalfWidth":I
    iput-boolean p1, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTouchInside:Z

    .line 527
    iget-boolean v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTouchInside:Z

    if-eqz v2, :cond_1f

    .line 528
    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcRadius:I

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTouchIgnoreRadius:F

    .line 534
    :goto_1e
    return-void

    .line 531
    :cond_1f
    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mArcRadius:I

    .line 532
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/delan/app/germanybluetooth/widget/SeekArc;->mTouchIgnoreRadius:F

    goto :goto_1e
.end method
