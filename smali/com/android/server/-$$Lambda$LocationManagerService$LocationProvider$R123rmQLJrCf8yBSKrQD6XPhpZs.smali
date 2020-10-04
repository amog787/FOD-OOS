.class public final synthetic Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$R123rmQLJrCf8yBSKrQD6XPhpZs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/LocationManagerService$LocationProvider;

.field private final synthetic f$1:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/LocationManagerService$LocationProvider;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$R123rmQLJrCf8yBSKrQD6XPhpZs;->f$0:Lcom/android/server/LocationManagerService$LocationProvider;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$R123rmQLJrCf8yBSKrQD6XPhpZs;->f$1:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$R123rmQLJrCf8yBSKrQD6XPhpZs;->f$0:Lcom/android/server/LocationManagerService$LocationProvider;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$R123rmQLJrCf8yBSKrQD6XPhpZs;->f$1:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$LocationProvider;->lambda$onReportLocation$0$LocationManagerService$LocationProvider(Landroid/location/Location;)V

    return-void
.end method
