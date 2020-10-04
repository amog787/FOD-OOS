.class public Lcom/oneplus/sdk/utils/OpAppTracker;
.super Ljava/lang/Object;
.source "OpAppTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/sdk/utils/OpAppTracker$MyLog;
    }
.end annotation


# static fields
.field private static final APP_TRACKER:Ljava/lang/String; = "net.oneplus.odm.OpDeviceManagerInjector"

.field private static final DBG:Z = false

.field public static final RESULT_FAIL:I = -0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OpAppTracker"


# instance fields
.field private mAppTrackerInst:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mOnEventFunc:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    const-string v0, "OpAppTracker"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/sdk/utils/OpAppTracker;->mAppTrackerInst:Ljava/lang/Object;

    .line 35
    iput-object v1, p0, Lcom/oneplus/sdk/utils/OpAppTracker;->mOnEventFunc:Ljava/lang/reflect/Method;

    .line 36
    iput-object v1, p0, Lcom/oneplus/sdk/utils/OpAppTracker;->mContext:Landroid/content/Context;

    .line 46
    const/4 v2, 0x0

    .line 49
    .local v2, "argClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "net.oneplus.odm.OpDeviceManagerInjector"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 50
    .local v3, "appTrackerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getInstance"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 51
    .local v4, "getInstanceFunc":Ljava/lang/reflect/Method;
    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/sdk/utils/OpAppTracker;->mAppTrackerInst:Ljava/lang/Object;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got mAppTrackerInst "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oneplus/sdk/utils/OpAppTracker;->mAppTrackerInst:Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/sdk/utils/OpAppTracker$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/oneplus/sdk/utils/OpAppTracker;->mContext:Landroid/content/Context;

    .line 58
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v1, v5

    const/4 v5, 0x2

    const-class v6, Ljava/util/Map;

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-class v6, Ljava/util/Map;

    aput-object v6, v1, v5

    move-object v2, v1

    .line 59
    const-string v1, "preserveAppData"

    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/sdk/utils/OpAppTracker;->mOnEventFunc:Ljava/lang/reflect/Method;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got mOnEventFunc method = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/sdk/utils/OpAppTracker;->mOnEventFunc:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/sdk/utils/OpAppTracker$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v4    # "getInstanceFunc":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 62
    .end local v3    # "appTrackerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 100
    .local p3, "eventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 102
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/sdk/utils/OpAppTracker;->mOnEventFunc:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/oneplus/sdk/utils/OpAppTracker;->mAppTrackerInst:Ljava/lang/Object;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpAppTracker"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const/4 v0, -0x1

    .line 109
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public onEvent(Ljava/lang/String;Ljava/util/Map;)I
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 77
    .local p2, "eventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 79
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/sdk/utils/OpAppTracker;->mOnEventFunc:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/oneplus/sdk/utils/OpAppTracker;->mAppTrackerInst:Ljava/lang/Object;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oneplus/sdk/utils/OpAppTracker;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpAppTracker"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    const/4 v0, -0x1

    .line 86
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
