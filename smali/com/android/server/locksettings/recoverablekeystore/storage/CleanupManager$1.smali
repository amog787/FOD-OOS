.class Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager$1;
.super Ljava/util/ArrayList;
.source "CleanupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->verifyKnownUsers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    .line 107
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager$1;->this$0:Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method
