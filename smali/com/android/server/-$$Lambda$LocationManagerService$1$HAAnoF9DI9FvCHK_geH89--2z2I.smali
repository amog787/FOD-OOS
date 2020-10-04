.class public final synthetic Lcom/android/server/-$$Lambda$LocationManagerService$1$HAAnoF9DI9FvCHK_geH89--2z2I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/LocationManagerService$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/LocationManagerService$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$LocationManagerService$1$HAAnoF9DI9FvCHK_geH89--2z2I;->f$0:Lcom/android/server/LocationManagerService$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$LocationManagerService$1$HAAnoF9DI9FvCHK_geH89--2z2I;->f$0:Lcom/android/server/LocationManagerService$1;

    invoke-virtual {v0}, Lcom/android/server/LocationManagerService$1;->lambda$onOpChanged$0$LocationManagerService$1()V

    return-void
.end method
