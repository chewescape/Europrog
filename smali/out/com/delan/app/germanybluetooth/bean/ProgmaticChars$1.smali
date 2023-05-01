.class final Lcom/delan/app/germanybluetooth/bean/ProgmaticChars$1;
.super Ljava/lang/Object;
.source "ProgmaticChars.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 104
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    invoke-direct {v0, p1}, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars$1;->createFromParcel(Landroid/os/Parcel;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 109
    new-array v0, p1, [Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars$1;->newArray(I)[Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v0

    return-object v0
.end method
