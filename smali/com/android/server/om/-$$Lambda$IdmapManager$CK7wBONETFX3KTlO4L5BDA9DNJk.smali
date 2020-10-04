.class public final synthetic Lcom/android/server/om/-$$Lambda$IdmapManager$CK7wBONETFX3KTlO4L5BDA9DNJk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/om/IdmapManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/IdmapManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/-$$Lambda$IdmapManager$CK7wBONETFX3KTlO4L5BDA9DNJk;->f$0:Lcom/android/server/om/IdmapManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/-$$Lambda$IdmapManager$CK7wBONETFX3KTlO4L5BDA9DNJk;->f$0:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0}, Lcom/android/server/om/IdmapManager;->lambda$connectToIdmap2d$0$IdmapManager()V

    return-void
.end method
