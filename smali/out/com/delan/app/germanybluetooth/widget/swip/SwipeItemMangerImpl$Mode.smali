.class public final enum Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;
.super Ljava/lang/Enum;
.source "SwipeItemMangerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

.field public static final enum Multiple:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

.field public static final enum Single:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    const-string v1, "Single"

    invoke-direct {v0, v1, v2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;->Single:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    new-instance v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    const-string v1, "Multiple"

    invoke-direct {v0, v1, v3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;->Multiple:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;->Single:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;->Multiple:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;->$VALUES:[Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    return-object v0
.end method

.method public static values()[Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;->$VALUES:[Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    invoke-virtual {v0}, [Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    return-object v0
.end method
