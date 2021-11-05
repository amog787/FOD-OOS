.class public final synthetic Lcom/android/server/twilight/-$$Lambda$QlMS1hfADW-S9aqM_RavcEKO3N0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/twilight/-$$Lambda$QlMS1hfADW-S9aqM_RavcEKO3N0;->f$0:Lcom/android/server/twilight/TwilightService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/twilight/-$$Lambda$QlMS1hfADW-S9aqM_RavcEKO3N0;->f$0:Lcom/android/server/twilight/TwilightService;

    check-cast p1, Landroid/location/Location;

    invoke-virtual {v0, p1}, Lcom/android/server/twilight/TwilightService;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method
