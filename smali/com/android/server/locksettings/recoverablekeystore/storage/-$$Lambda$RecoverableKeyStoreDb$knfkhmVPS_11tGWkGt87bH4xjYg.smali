.class public final synthetic Lcom/android/server/locksettings/recoverablekeystore/storage/-$$Lambda$RecoverableKeyStoreDb$knfkhmVPS_11tGWkGt87bH4xjYg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/StringJoiner;


# direct methods
.method public synthetic constructor <init>(Ljava/util/StringJoiner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/-$$Lambda$RecoverableKeyStoreDb$knfkhmVPS_11tGWkGt87bH4xjYg;->f$0:Ljava/util/StringJoiner;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/-$$Lambda$RecoverableKeyStoreDb$knfkhmVPS_11tGWkGt87bH4xjYg;->f$0:Ljava/util/StringJoiner;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->lambda$setRecoverySecretTypes$0(Ljava/util/StringJoiner;I)V

    return-void
.end method
