.class public final synthetic Lcom/android/server/pm/-$$Lambda$StagingManager$1$x6UWz5lz4rW7MnWw4KzvwIRWgsQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/StagingManager$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/StagingManager$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$StagingManager$1$x6UWz5lz4rW7MnWw4KzvwIRWgsQ;->f$0:Lcom/android/server/pm/StagingManager$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$StagingManager$1$x6UWz5lz4rW7MnWw4KzvwIRWgsQ;->f$0:Lcom/android/server/pm/StagingManager$1;

    invoke-virtual {v0}, Lcom/android/server/pm/StagingManager$1;->lambda$onReceive$0$StagingManager$1()V

    return-void
.end method
