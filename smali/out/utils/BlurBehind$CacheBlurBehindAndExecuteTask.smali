.class Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;
.super Landroid/os/AsyncTask;
.source "BlurBehind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutils/BlurBehind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheBlurBehindAndExecuteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private decorView:Landroid/view/View;

.field private image:Landroid/graphics/Bitmap;

.field private final runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lutils/BlurBehind;


# direct methods
.method public constructor <init>(Lutils/BlurBehind;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 4
    .param p2, "a"    # Landroid/app/Activity;
    .param p3, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 106
    iput-object p1, p0, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->this$0:Lutils/BlurBehind;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 107
    iput-object p2, p0, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->activity:Landroid/app/Activity;

    .line 108
    iput-object p3, p0, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->runnable:Ljava/lang/Runnable;

    .line 109
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 98
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 125
    iget-object v1, p0, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->image:Landroid/graphics/Bitmap;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lutils/Blur;->apply(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    .local v0, "blurredBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lutils/BlurBehind;->access$000()Landroid/support/v4/util/LruCache;

    move-result-object v1

    const-string v2, "KEY_CACHE_BLURRED_BACKGROUND_IMAGE"

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 98
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 137
    iget-object v0, p0, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->decorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->activity:Landroid/app/Activity;

    .line 141
    iget-object v0, p0, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 143
    iget-object v0, p0, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->this$0:Lutils/BlurBehind;

    sget-object v1, Lutils/BlurBehind$State;->READY:Lutils/BlurBehind$State;

    invoke-static {v0, v1}, Lutils/BlurBehind;->access$102(Lutils/BlurBehind;Lutils/BlurBehind$State;)Lutils/BlurBehind$State;

    .line 144
    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 113
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 115
    iget-object v0, p0, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->decorView:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->decorView:Landroid/view/View;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 117
    iget-object v0, p0, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->decorView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 118
    iget-object v0, p0, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 120
    iget-object v0, p0, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lutils/BlurBehind$CacheBlurBehindAndExecuteTask;->image:Landroid/graphics/Bitmap;

    .line 121
    return-void
.end method
