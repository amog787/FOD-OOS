.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssManagerService$de6v4jWKxQDC9J4FdGGrfKg2phA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/AppForegroundHelper$AppForegroundListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssManagerService$de6v4jWKxQDC9J4FdGGrfKg2phA;->f$0:Lcom/android/server/location/gnss/GnssManagerService;

    return-void
.end method


# virtual methods
.method public final onAppForegroundChanged(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssManagerService$de6v4jWKxQDC9J4FdGGrfKg2phA;->f$0:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService;->lambda$de6v4jWKxQDC9J4FdGGrfKg2phA(Lcom/android/server/location/gnss/GnssManagerService;IZ)V

    return-void
.end method
