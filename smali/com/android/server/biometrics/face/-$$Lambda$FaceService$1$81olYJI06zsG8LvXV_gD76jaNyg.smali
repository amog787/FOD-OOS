.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$81olYJI06zsG8LvXV_gD76jaNyg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$1;

.field private final synthetic f$1:Ljava/util/ArrayList;

.field private final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$1;Ljava/util/ArrayList;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$81olYJI06zsG8LvXV_gD76jaNyg;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iput-object p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$81olYJI06zsG8LvXV_gD76jaNyg;->f$1:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$81olYJI06zsG8LvXV_gD76jaNyg;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$81olYJI06zsG8LvXV_gD76jaNyg;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iget-object v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$81olYJI06zsG8LvXV_gD76jaNyg;->f$1:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$81olYJI06zsG8LvXV_gD76jaNyg;->f$2:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/face/FaceService$1;->lambda$onEnumerate$5$FaceService$1(Ljava/util/ArrayList;J)V

    return-void
.end method
