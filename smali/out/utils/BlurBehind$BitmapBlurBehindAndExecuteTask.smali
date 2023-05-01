.class Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;
.super Landroid/os/AsyncTask;
.source "BlurBehind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutils/BlurBehind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapBlurBehindAndExecuteTask"
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

.field private blurredBitmap:Landroid/graphics/Bitmap;

.field private decorView:Landroid/view/View;

.field private image:Landroid/graphics/Bitmap;

.field private runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lutils/BlurBehind;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lutils/BlurBehind;Landroid/app/Activity;Landroid/view/View;)V
    .registers 5
    .param p2, "a"    # Landroid/app/Activity;
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;-><init>(Lutils/BlurBehind;Landroid/app/Activity;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lutils/BlurBehind;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 5
    .param p2, "a"    # Landroid/app/Activity;
    .param p3, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;-><init>(Lutils/BlurBehind;Landroid/app/Activity;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Lutils/BlurBehind;Landroid/app/Activity;Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 5
    .param p2, "a"    # Landroid/app/Activity;
    .param p3, "r"    # Ljava/lang/Runnable;
    .param p4, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iput-object p1, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->this$0:Lutils/BlurBehind;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 158
    iput-object p2, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->activity:Landroid/app/Activity;

    .line 159
    iput-object p3, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->runnable:Ljava/lang/Runnable;

    .line 160
    iput-object p4, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->view:Landroid/view/View;

    .line 161
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 147
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-object v0, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->cancel(Z)Z

    .line 222
    :goto_d
    return-object v3

    .line 200
    :cond_e
    iget-object v0, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->image:Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lutils/Blur;->apply(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->blurredBitmap:Landroid/graphics/Bitmap;

    goto :goto_d
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 147
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 230
    iget-object v0, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->decorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 232
    iget-object v0, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->view:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 241
    iget-object v0, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->blurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    .line 242
    iget-object v0, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->blurredBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 243
    :cond_1f
    iget-object v0, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->this$0:Lutils/BlurBehind;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lutils/BlurBehind;->access$202(Lutils/BlurBehind;Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;)Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;

    .line 245
    :cond_25
    iget-object v0, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2e

    .line 246
    iget-object v0, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 248
    :cond_2e
    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 173
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 175
    iget-object v0, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->decorView:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->decorView:Landroid/view/View;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 177
    iget-object v0, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->decorView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 178
    iget-object v0, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 180
    iget-object v0, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lutils/BlurBehind$BitmapBlurBehindAndExecuteTask;->image:Landroid/graphics/Bitmap;

    .line 192
    return-void
.end method
