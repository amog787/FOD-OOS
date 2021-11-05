.class public final synthetic Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$5y_AV_Q7BQ7QMC5yBezSflQuMpw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$5y_AV_Q7BQ7QMC5yBezSflQuMpw;->f$0:I

    iput p2, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$5y_AV_Q7BQ7QMC5yBezSflQuMpw;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$5y_AV_Q7BQ7QMC5yBezSflQuMpw;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$5y_AV_Q7BQ7QMC5yBezSflQuMpw;->f$0:I

    iget v1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$5y_AV_Q7BQ7QMC5yBezSflQuMpw;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$5y_AV_Q7BQ7QMC5yBezSflQuMpw;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService$1;->lambda$onPermissionRevoked$2(IILjava/lang/String;)V

    return-void
.end method
