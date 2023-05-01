.class Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$5;
.super Ljava/lang/Object;
.source "VersionListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->updateProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$5;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    iput p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 500
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$5;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->access$500(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 501
    iget v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$5;->val$index:I

    int-to-double v2, v1

    mul-double/2addr v2, v6

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$5;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 502
    .local v0, "i":I
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$5;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->access$600(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$5;->val$index:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$5;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 503
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$5;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->access$700(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    return-void
.end method
