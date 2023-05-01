.class public Lutils/BlurBehind;
.super Ljava/lang/Object;
.source "BlurBehind.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;,
        Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;,
        Lutils/BlurBehind$State;
    }
.end annotation


# static fields
.field private static final CONSTANT_BLUR_RADIUS:I = 0x2

.field private static final CONSTANT_DEFAULT_ALPHA:I = 0x64

.field private static final KEY_CACHE_BLURRED_BACKGROUND_IMAGE:Ljava/lang/String; = "KEY_CACHE_BLURRED_BACKGROUND_IMAGE"

.field private static final mImageCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lutils/BlurBehind;


# instance fields
.field private bitmapBlurBehindAndExecuteTask:Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;

.field private mAlpha:I

.field private mFilterColor:I

.field private mState:Lutils/BlurBehind$State;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lutils/BlurBehind;->mImageCache:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x64

    iput v0, p0, Lutils/BlurBehind;->mAlpha:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lutils/BlurBehind;->mFilterColor:I

    .line 34
    sget-object v0, Lutils/BlurBehind$State;->READY:Lutils/BlurBehind$State;

    iput-object v0, p0, Lutils/BlurBehind;->mState:Lutils/BlurBehind$State;

    return-void
.end method

.method static synthetic access$000()Landroid/support/v4/util/LruCache;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lutils/BlurBehind;->mImageCache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method static synthetic access$102(Lutils/BlurBehind;Lutils/BlurBehind$State;)Lutils/BlurBehind$State;
    .registers 2
    .param p0, "x0"    # Lutils/BlurBehind;
    .param p1, "x1"    # Lutils/BlurBehind$State;

    .prologue
    .line 16
    iput-object p1, p0, Lutils/BlurBehind;->mState:Lutils/BlurBehind$State;

    return-object p1
.end method

.method static synthetic access$202(Lutils/BlurBehind;Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;)Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;
    .registers 2
    .param p0, "x0"    # Lutils/BlurBehind;
    .param p1, "x1"    # Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;

    .prologue
    .line 16
    iput-object p1, p0, Lutils/BlurBehind;->bitmapBlurBehindAndExecuteTask:Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;

    return-object p1
.end method

.method public static getInstance()Lutils/BlurBehind;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lutils/BlurBehind;->mInstance:Lutils/BlurBehind;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Lutils/BlurBehind;

    invoke-direct {v0}, Lutils/BlurBehind;-><init>()V

    sput-object v0, Lutils/BlurBehind;->mInstance:Lutils/BlurBehind;

    .line 42
    :cond_b
    sget-object v0, Lutils/BlurBehind;->mInstance:Lutils/BlurBehind;

    return-object v0
.end method

.method private static toScaleBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    const/4 v1, 0x0

    .line 253
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 254
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 256
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 257
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    .line 256
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 55
    new-instance v0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;-><init>(Lutils/BlurBehind;Landroid/app/Activity;Ljava/lang/Runnable;Landroid/view/View;)V

    iput-object v0, p0, Lutils/BlurBehind;->bitmapBlurBehindAndExecuteTask:Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;

    .line 57
    iget-object v0, p0, Lutils/BlurBehind;->bitmapBlurBehindAndExecuteTask:Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    return-void
.end method

.method public setBackground(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 71
    sget-object v1, Lutils/BlurBehind;->mImageCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1}, Landroid/support/v4/util/LruCache;->size()I

    move-result v1

    if-eqz v1, :cond_3a

    .line 72
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v1, Lutils/BlurBehind;->mImageCache:Landroid/support/v4/util/LruCache;

    const-string v3, "KEY_CACHE_BLURRED_BACKGROUND_IMAGE"

    .line 73
    invoke-virtual {v1, v3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 74
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget v1, p0, Lutils/BlurBehind;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 75
    iget v1, p0, Lutils/BlurBehind;->mFilterColor:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    .line 76
    iget v1, p0, Lutils/BlurBehind;->mFilterColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    :cond_2c
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    sget-object v1, Lutils/BlurBehind;->mImageCache:Landroid/support/v4/util/LruCache;

    const-string v2, "KEY_CACHE_BLURRED_BACKGROUND_IMAGE"

    invoke-virtual {v1, v2}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3a
    return-void
.end method

.method public setBackground(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    sget-object v1, Lutils/BlurBehind;->mImageCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1}, Landroid/support/v4/util/LruCache;->size()I

    move-result v1

    if-eqz v1, :cond_36

    .line 86
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v1, Lutils/BlurBehind;->mImageCache:Landroid/support/v4/util/LruCache;

    const-string v3, "KEY_CACHE_BLURRED_BACKGROUND_IMAGE"

    .line 87
    invoke-virtual {v1, v3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 88
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget v1, p0, Lutils/BlurBehind;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 89
    iget v1, p0, Lutils/BlurBehind;->mFilterColor:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    .line 90
    iget v1, p0, Lutils/BlurBehind;->mFilterColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 92
    :cond_2c
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    sget-object v1, Lutils/BlurBehind;->mImageCache:Landroid/support/v4/util/LruCache;

    const-string v2, "KEY_CACHE_BLURRED_BACKGROUND_IMAGE"

    invoke-virtual {v1, v2}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_36
    return-void
.end method

.method public withAlpha(I)Lutils/BlurBehind;
    .registers 2
    .param p1, "alpha"    # I

    .prologue
    .line 61
    iput p1, p0, Lutils/BlurBehind;->mAlpha:I

    .line 62
    return-object p0
.end method

.method public withFilterColor(I)Lutils/BlurBehind;
    .registers 2
    .param p1, "filterColor"    # I

    .prologue
    .line 66
    iput p1, p0, Lutils/BlurBehind;->mFilterColor:I

    .line 67
    return-object p0
.end method
