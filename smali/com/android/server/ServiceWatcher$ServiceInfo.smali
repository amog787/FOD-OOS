.class public final Lcom/android/server/ServiceWatcher$ServiceInfo;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/ServiceWatcher$ServiceInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final NONE:Lcom/android/server/ServiceWatcher$ServiceInfo;


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final userId:I

.field public final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 96
    new-instance v0, Lcom/android/server/ServiceWatcher$ServiceInfo;

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/16 v3, -0x2710

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceWatcher$ServiceInfo;-><init>(ILandroid/content/ComponentName;I)V

    sput-object v0, Lcom/android/server/ServiceWatcher$ServiceInfo;->NONE:Lcom/android/server/ServiceWatcher$ServiceInfo;

    return-void
.end method

.method private constructor <init>(ILandroid/content/ComponentName;I)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    if-nez p2, :cond_1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 122
    iput p1, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->version:I

    .line 123
    iput-object p2, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    .line 124
    iput p3, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->userId:I

    .line 125
    return-void
.end method

.method constructor <init>(Landroid/content/pm/ResolveInfo;I)V
    .locals 4
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "currentUserId"    # I

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 106
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 108
    .local v0, "metadata":Landroid/os/Bundle;
    const/high16 v2, -0x80000000

    if-eqz v0, :cond_1

    .line 109
    const-string/jumbo v3, "serviceVersion"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->version:I

    .line 110
    const-string/jumbo v2, "serviceIsMultiuser"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "isMultiuser":Z
    goto :goto_1

    .line 112
    .end local v2    # "isMultiuser":Z
    :cond_1
    iput v2, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->version:I

    .line 113
    const/4 v2, 0x0

    .line 116
    .restart local v2    # "isMultiuser":Z
    :goto_1
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    .line 117
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, p2

    :goto_2
    iput v1, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->userId:I

    .line 118
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/ServiceWatcher$ServiceInfo;)I
    .locals 2
    .param p1, "that"    # Lcom/android/server/ServiceWatcher$ServiceInfo;

    .line 152
    iget v0, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->version:I

    iget v1, p1, Lcom/android/server/ServiceWatcher$ServiceInfo;->version:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 153
    .local v0, "ret":I
    if-nez v0, :cond_3

    .line 154
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 155
    const/4 v0, -0x1

    goto :goto_0

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    if-nez v1, :cond_1

    .line 157
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    iget v1, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->userId:I

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/android/server/ServiceWatcher$ServiceInfo;->userId:I

    if-nez v1, :cond_2

    .line 160
    const/4 v0, -0x1

    goto :goto_0

    .line 161
    :cond_2
    iget v1, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->userId:I

    if-nez v1, :cond_3

    iget v1, p1, Lcom/android/server/ServiceWatcher$ServiceInfo;->userId:I

    if-eqz v1, :cond_3

    .line 163
    const/4 v0, 0x1

    .line 167
    :cond_3
    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 94
    check-cast p1, Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/ServiceWatcher$ServiceInfo;->compareTo(Lcom/android/server/ServiceWatcher$ServiceInfo;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 129
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 130
    return v0

    .line 132
    :cond_0
    instance-of v1, p1, Lcom/android/server/ServiceWatcher$ServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 133
    return v2

    .line 135
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/ServiceWatcher$ServiceInfo;

    .line 136
    .local v1, "that":Lcom/android/server/ServiceWatcher$ServiceInfo;
    iget v3, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->version:I

    iget v4, v1, Lcom/android/server/ServiceWatcher$ServiceInfo;->version:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->userId:I

    iget v4, v1, Lcom/android/server/ServiceWatcher$ServiceInfo;->userId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    .line 137
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 136
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 142
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 173
    const-string/jumbo v0, "none"

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "[u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ServiceWatcher$ServiceInfo;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
