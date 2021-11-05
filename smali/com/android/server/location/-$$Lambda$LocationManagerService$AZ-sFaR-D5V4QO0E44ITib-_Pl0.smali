.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationManagerService$AZ-sFaR-D5V4QO0E44ITib-_Pl0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$AZ-sFaR-D5V4QO0E44ITib-_Pl0;->f$0:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final onPermissionsChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$AZ-sFaR-D5V4QO0E44ITib-_Pl0;->f$0:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationManagerService;->lambda$onSystemReady$3$LocationManagerService(I)V

    return-void
.end method
