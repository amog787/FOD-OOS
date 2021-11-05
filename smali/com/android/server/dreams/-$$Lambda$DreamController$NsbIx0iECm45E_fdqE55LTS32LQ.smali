.class public final synthetic Lcom/android/server/dreams/-$$Lambda$DreamController$NsbIx0iECm45E_fdqE55LTS32LQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/dreams/DreamController;

.field public final synthetic f$1:Lcom/android/server/dreams/DreamController$DreamRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamController;Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/dreams/-$$Lambda$DreamController$NsbIx0iECm45E_fdqE55LTS32LQ;->f$0:Lcom/android/server/dreams/DreamController;

    iput-object p2, p0, Lcom/android/server/dreams/-$$Lambda$DreamController$NsbIx0iECm45E_fdqE55LTS32LQ;->f$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/dreams/-$$Lambda$DreamController$NsbIx0iECm45E_fdqE55LTS32LQ;->f$0:Lcom/android/server/dreams/DreamController;

    iget-object v1, p0, Lcom/android/server/dreams/-$$Lambda$DreamController$NsbIx0iECm45E_fdqE55LTS32LQ;->f$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/dreams/DreamController;->lambda$stopDream$1$DreamController(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    return-void
.end method
