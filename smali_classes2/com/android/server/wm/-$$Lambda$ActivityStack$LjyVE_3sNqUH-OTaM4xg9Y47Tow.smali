.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$LjyVE_3sNqUH-OTaM4xg9Y47Tow;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStack;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$LjyVE_3sNqUH-OTaM4xg9Y47Tow;->f$0:Lcom/android/server/wm/ActivityStack;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$LjyVE_3sNqUH-OTaM4xg9Y47Tow;->f$0:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->lambda$dismissPip$13$ActivityStack()V

    return-void
.end method
