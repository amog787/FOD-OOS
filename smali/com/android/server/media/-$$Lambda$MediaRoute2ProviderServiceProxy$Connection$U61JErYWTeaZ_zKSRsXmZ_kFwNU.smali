.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$U61JErYWTeaZ_zKSRsXmZ_kFwNU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$U61JErYWTeaZ_zKSRsXmZ_kFwNU;->f$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$U61JErYWTeaZ_zKSRsXmZ_kFwNU;->f$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->lambda$binderDied$1$MediaRoute2ProviderServiceProxy$Connection()V

    return-void
.end method
