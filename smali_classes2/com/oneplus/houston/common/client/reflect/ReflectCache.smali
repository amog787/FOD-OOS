.class public Lcom/oneplus/houston/common/client/reflect/ReflectCache;
.super Ljava/lang/Object;
.source "ReflectCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;
    }
.end annotation


# static fields
.field private static final CACHE_CLASS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final CACHE_METHOD:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final crc32:Ljava/util/zip/CRC32;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->CACHE_METHOD:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->CACHE_CLASS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v0, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->crc32:Ljava/util/zip/CRC32;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .locals 1

    .line 102
    sget-object v0, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->CACHE_METHOD:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 103
    sget-object v0, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->CACHE_CLASS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 104
    return-void
.end method

.method private static exactMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 65
    :catch_1
    move-exception v1

    .line 67
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 68
    if-eqz p0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v1
.end method

.method private static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    invoke-static {p0}, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->getCrc32(Ljava/lang/String;)J

    move-result-wide v0

    .line 75
    .local v0, "value":J
    sget-object v2, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->CACHE_CLASS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 76
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_0

    .line 77
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 78
    sget-object v3, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->CACHE_CLASS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    return-object v2
.end method

.method private static getCrc32(Ljava/lang/String;)J
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->crc32:Ljava/util/zip/CRC32;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 96
    sget-object v1, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 97
    sget-object v1, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 45
    .local v0, "aa":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 46
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->getMethodCacheName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    .line 49
    .local v1, "methodCacheName":J
    sget-object v3, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->CACHE_METHOD:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 50
    .local v3, "method":Ljava/lang/reflect/Method;
    if-nez v3, :cond_1

    .line 51
    invoke-static {p0, p1, p2}, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->exactMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 52
    sget-object v4, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->CACHE_METHOD:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1
    return-object v3
.end method

.method private static varargs getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    .local p2, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static varargs getMethodCacheName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 87
    .local v3, "arg":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .end local v3    # "arg":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->getCrc32(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static varargs on(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    .local p2, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/oneplus/houston/common/client/reflect/ReflectCache$1;)V

    return-object v0
.end method

.method public static varargs on(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    .local p2, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;

    invoke-static {p0, p1, p2}, Lcom/oneplus/houston/common/client/reflect/ReflectCache;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/oneplus/houston/common/client/reflect/ReflectCache$1;)V

    return-object v0
.end method
