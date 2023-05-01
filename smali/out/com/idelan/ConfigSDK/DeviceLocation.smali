.class public Lcom/idelan/ConfigSDK/DeviceLocation;
.super Ljava/lang/Object;
.source "DeviceLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private context:Landroid/content/Context;

.field public lastKnownLocation:Landroid/location/Location;

.field private locManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/idelan/ConfigSDK/DeviceLocation;->context:Landroid/content/Context;

    .line 16
    invoke-direct {p0}, Lcom/idelan/ConfigSDK/DeviceLocation;->getLocation()V

    .line 17
    return-void
.end method

.method private getLocation()V
    .registers 7

    .prologue
    .line 20
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceLocation;->context:Landroid/content/Context;

    .line 21
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 20
    iput-object v0, p0, Lcom/idelan/ConfigSDK/DeviceLocation;->locManager:Landroid/location/LocationManager;

    .line 22
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceLocation;->locManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    .line 23
    const/4 v4, 0x0

    move-object v5, p0

    .line 22
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 24
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceLocation;->locManager:Landroid/location/LocationManager;

    .line 25
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/idelan/ConfigSDK/DeviceLocation;->lastKnownLocation:Landroid/location/Location;

    .line 26
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/idelan/ConfigSDK/DeviceLocation;->lastKnownLocation:Landroid/location/Location;

    .line 32
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 50
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 44
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 38
    return-void
.end method
