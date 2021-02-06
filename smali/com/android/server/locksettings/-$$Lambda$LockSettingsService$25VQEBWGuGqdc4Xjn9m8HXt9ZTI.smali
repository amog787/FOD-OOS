.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$25VQEBWGuGqdc4Xjn9m8HXt9ZTI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/LockSettingsService;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$25VQEBWGuGqdc4Xjn9m8HXt9ZTI;->f$0:Lcom/android/server/locksettings/LockSettingsService;

    iput-object p2, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$25VQEBWGuGqdc4Xjn9m8HXt9ZTI;->f$1:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$25VQEBWGuGqdc4Xjn9m8HXt9ZTI;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$25VQEBWGuGqdc4Xjn9m8HXt9ZTI;->f$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$25VQEBWGuGqdc4Xjn9m8HXt9ZTI;->f$1:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$25VQEBWGuGqdc4Xjn9m8HXt9ZTI;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->lambda$unlockUser$1$LockSettingsService(Ljava/util/ArrayList;I)V

    return-void
.end method
