.class public final enum Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;
.super Ljava/lang/Enum;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DragEdge"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

.field public static final enum Bottom:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

.field public static final enum Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

.field public static final enum Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

.field public static final enum Top:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    const-string v1, "Left"

    invoke-direct {v0, v1, v2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    new-instance v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    const-string v1, "Right"

    invoke-direct {v0, v1, v3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    new-instance v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    const-string v1, "Top"

    invoke-direct {v0, v1, v4}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Top:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    new-instance v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    const-string v1, "Bottom"

    invoke-direct {v0, v1, v5}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Bottom:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    aput-object v1, v0, v2

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    aput-object v1, v0, v3

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Top:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    aput-object v1, v0, v4

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Bottom:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    aput-object v1, v0, v5

    sput-object v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->$VALUES:[Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    return-object v0
.end method

.method public static values()[Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->$VALUES:[Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    invoke-virtual {v0}, [Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    return-object v0
.end method
