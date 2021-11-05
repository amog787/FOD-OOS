.class public final synthetic Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$zTtSbQ0CQIRmtys80G-dcYpMGXg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LaunchParamsPersister;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$zTtSbQ0CQIRmtys80G-dcYpMGXg;->f$0:Lcom/android/server/wm/LaunchParamsPersister;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$zTtSbQ0CQIRmtys80G-dcYpMGXg;->f$0:Lcom/android/server/wm/LaunchParamsPersister;

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->lambda$saveTask$0$LaunchParamsPersister(Landroid/content/ComponentName;)Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    move-result-object p1

    return-object p1
.end method
