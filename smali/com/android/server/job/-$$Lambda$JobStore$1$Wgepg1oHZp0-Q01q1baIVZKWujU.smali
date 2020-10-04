.class public final synthetic Lcom/android/server/job/-$$Lambda$JobStore$1$Wgepg1oHZp0-Q01q1baIVZKWujU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/-$$Lambda$JobStore$1$Wgepg1oHZp0-Q01q1baIVZKWujU;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/-$$Lambda$JobStore$1$Wgepg1oHZp0-Q01q1baIVZKWujU;->f$0:Ljava/util/List;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-static {v0, p1}, Lcom/android/server/job/JobStore$1;->lambda$run$0(Ljava/util/List;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method
