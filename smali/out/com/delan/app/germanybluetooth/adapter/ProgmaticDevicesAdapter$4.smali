.class Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$4;
.super Ljava/lang/Object;
.source "ProgmaticDevicesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->fillValues(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

.field final synthetic val$bean:Lcom/delan/app/germanybluetooth/bean/ProfileBean;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;Lcom/delan/app/germanybluetooth/bean/ProfileBean;)V
    .registers 3
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$4;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$4;->val$bean:Lcom/delan/app/germanybluetooth/bean/ProfileBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$4;->val$bean:Lcom/delan/app/germanybluetooth/bean/ProfileBean;

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$4;->val$bean:Lcom/delan/app/germanybluetooth/bean/ProfileBean;

    iget-boolean v0, v0, Lcom/delan/app/germanybluetooth/bean/ProfileBean;->isSelected:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, v1, Lcom/delan/app/germanybluetooth/bean/ProfileBean;->isSelected:Z

    .line 134
    return-void

    .line 133
    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method
