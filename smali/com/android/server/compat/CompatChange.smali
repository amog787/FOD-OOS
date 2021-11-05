.class public final Lcom/android/server/compat/CompatChange;
.super Lcom/android/internal/compat/CompatibilityChangeInfo;
.source "CompatChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/compat/CompatChange$ChangeListener;
    }
.end annotation


# static fields
.field private static final CTS_SYSTEM_API_CHANGEID:J = 0x8e787b1L


# instance fields
.field mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

.field private mPackageOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 8
    .param p1, "changeId"    # J

    .line 66
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/compat/CompatChange;-><init>(JLjava/lang/String;IZZLjava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IZZLjava/lang/String;)V
    .locals 7
    .param p1, "changeId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "enableAfterTargetSdk"    # I
    .param p5, "disabled"    # Z
    .param p6, "loggingOnly"    # Z
    .param p7, "description"    # Ljava/lang/String;

    .line 78
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/compat/CompatibilityChangeInfo;-><init>(Ljava/lang/Long;Ljava/lang/String;IZZLjava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/android/server/compat/config/Change;)V
    .locals 9
    .param p1, "change"    # Lcom/android/server/compat/config/Change;

    .line 85
    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getEnableAfterTargetSdk()I

    move-result v5

    .line 86
    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getDisabled()Z

    move-result v6

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getLoggingOnly()Z

    move-result v7

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getDescription()Ljava/lang/String;

    move-result-object v8

    .line 85
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/compat/CompatibilityChangeInfo;-><init>(Ljava/lang/Long;Ljava/lang/String;IZZLjava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 87
    return-void
.end method

.method private notifyListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0, p1}, Lcom/android/server/compat/CompatChange$ChangeListener;->onCompatChange(Ljava/lang/String;)V

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method addPackageOverride(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pname"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 108
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getLoggingOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mPackageOverrides:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/CompatChange;->mPackageOverrides:Ljava/util/Map;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mPackageOverrides:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/compat/CompatChange;->notifyListener(Ljava/lang/String;)V

    .line 117
    return-void

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t add overrides for a logging only change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hasOverride(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mPackageOverrides:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isEnabled(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 142
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mPackageOverrides:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mPackageOverrides:Ljava/util/Map;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 146
    return v1

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getEnableAfterTargetSdk()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    .line 149
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getEnableAfterTargetSdk()I

    move-result v2

    if-le v0, v2, :cond_2

    move v1, v3

    :cond_2
    return v1

    .line 151
    :cond_3
    return v3
.end method

.method registerListener(Lcom/android/server/compat/CompatChange$ChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 90
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    if-nez v0, :cond_0

    .line 94
    iput-object p1, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 95
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener for change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removePackageOverride(Ljava/lang/String;)V
    .locals 1
    .param p1, "pname"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mPackageOverrides:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/compat/CompatChange;->notifyListener(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChangeId("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    const-string v1, "; name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getEnableAfterTargetSdk()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 171
    const-string v1, "; enableAfterTargetSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getEnableAfterTargetSdk()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    const-string v1, "; disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getLoggingOnly()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    const-string v1, "; loggingOnly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_3
    iget-object v1, p0, Lcom/android/server/compat/CompatChange;->mPackageOverrides:Ljava/util/Map;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 180
    const-string v1, "; packageOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/compat/CompatChange;->mPackageOverrides:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    :cond_4
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
