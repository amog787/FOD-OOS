.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationManagerService$SdJCjgY1BwQ-VOtT2s6dcqDrOkA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$SdJCjgY1BwQ-VOtT2s6dcqDrOkA;->f$0:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final onAppOpsChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$SdJCjgY1BwQ-VOtT2s6dcqDrOkA;->f$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/location/LocationManagerService;->lambda$SdJCjgY1BwQ-VOtT2s6dcqDrOkA(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)V

    return-void
.end method
