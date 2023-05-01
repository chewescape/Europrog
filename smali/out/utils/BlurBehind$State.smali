.class final enum Lutils/BlurBehind$State;
.super Ljava/lang/Enum;
.source "BlurBehind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutils/BlurBehind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lutils/BlurBehind$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lutils/BlurBehind$State;

.field public static final enum EXECUTING:Lutils/BlurBehind$State;

.field public static final enum READY:Lutils/BlurBehind$State;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lutils/BlurBehind$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lutils/BlurBehind$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutils/BlurBehind$State;->READY:Lutils/BlurBehind$State;

    new-instance v0, Lutils/BlurBehind$State;

    const-string v1, "EXECUTING"

    invoke-direct {v0, v1, v3}, Lutils/BlurBehind$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutils/BlurBehind$State;->EXECUTING:Lutils/BlurBehind$State;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lutils/BlurBehind$State;

    sget-object v1, Lutils/BlurBehind$State;->READY:Lutils/BlurBehind$State;

    aput-object v1, v0, v2

    sget-object v1, Lutils/BlurBehind$State;->EXECUTING:Lutils/BlurBehind$State;

    aput-object v1, v0, v3

    sput-object v0, Lutils/BlurBehind$State;->$VALUES:[Lutils/BlurBehind$State;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lutils/BlurBehind$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lutils/BlurBehind$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lutils/BlurBehind$State;

    return-object v0
.end method

.method public static values()[Lutils/BlurBehind$State;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lutils/BlurBehind$State;->$VALUES:[Lutils/BlurBehind$State;

    invoke-virtual {v0}, [Lutils/BlurBehind$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lutils/BlurBehind$State;

    return-object v0
.end method
