.class public final synthetic Lcom/android/server/-$$Lambda$AlarmManagerService$6biANsIZPXvOci6ybplaG3NF_Yk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/PendingIntent$CancelListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$6biANsIZPXvOci6ybplaG3NF_Yk;->f$0:Lcom/android/server/AlarmManagerService;

    return-void
.end method


# virtual methods
.method public final onCancelled(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$6biANsIZPXvOci6ybplaG3NF_Yk;->f$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->lambda$onStart$0$AlarmManagerService(Landroid/app/PendingIntent;)V

    return-void
.end method
