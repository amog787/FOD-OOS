.class public final synthetic Lcom/android/server/slice/-$$Lambda$PinnedSliceState$KzxFkvfomRuMb5PD8_pIHDIhUUE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/slice/PinnedSliceState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/slice/PinnedSliceState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$KzxFkvfomRuMb5PD8_pIHDIhUUE;->f$0:Lcom/android/server/slice/PinnedSliceState;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$KzxFkvfomRuMb5PD8_pIHDIhUUE;->f$0:Lcom/android/server/slice/PinnedSliceState;

    invoke-static {v0}, Lcom/android/server/slice/PinnedSliceState;->lambda$KzxFkvfomRuMb5PD8_pIHDIhUUE(Lcom/android/server/slice/PinnedSliceState;)V

    return-void
.end method
