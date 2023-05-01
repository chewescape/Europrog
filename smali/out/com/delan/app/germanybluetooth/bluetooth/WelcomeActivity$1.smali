.class Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/WelcomeActivity;)V

    .line 35
    return-void
.end method
