.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$UyRHhEK51F9dKhfp0wUGjTncdyo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStackSupervisor;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityStack;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$UyRHhEK51F9dKhfp0wUGjTncdyo;->f$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$UyRHhEK51F9dKhfp0wUGjTncdyo;->f$1:Lcom/android/server/wm/ActivityStack;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$UyRHhEK51F9dKhfp0wUGjTncdyo;->f$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$UyRHhEK51F9dKhfp0wUGjTncdyo;->f$1:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->lambda$removeStack$1$ActivityStackSupervisor(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method
