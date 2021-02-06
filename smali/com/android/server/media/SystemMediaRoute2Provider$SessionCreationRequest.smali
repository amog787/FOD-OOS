.class Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;
.super Ljava/lang/Object;
.source "SystemMediaRoute2Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/SystemMediaRoute2Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionCreationRequest"
.end annotation


# instance fields
.field final mRequestId:J

.field final mRouteId:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # J
    .param p3, "routeId"    # Ljava/lang/String;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-wide p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;->mRequestId:J

    .line 387
    iput-object p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;->mRouteId:Ljava/lang/String;

    .line 388
    return-void
.end method
